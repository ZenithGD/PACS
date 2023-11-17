#include <atomic>
#include <mutex>
#include <condition_variable>

// Implementation of the Michael-Scott algorithm
template <typename T>
class nb_queue
{
    struct node_t;
    // Explicitly aligned due to https://gcc.gnu.org/bugzilla/show_bug.cgi?id=65147: gcc should automatically align std::atomic<pointer_t> on 16-byte boundary but doesn't (until 5.1)
    struct alignas(16) pointer_t
    {
        node_t *ptr;
        unsigned int count;
        // A zero-initialized pointer_t
        // I'm pretty sure we don't actually need to initialize count to 0 here given how these are used, but it can't hurt.
        pointer_t() noexcept : ptr{nullptr}, count{0} {}
        // A pointer_t pointing to a specific node
        pointer_t(node_t *ptr) : ptr{ptr}, count{0} {}
        // A pointer_t pointing to a specific node with a specific count
        pointer_t(node_t *ptr, unsigned int count) : ptr{ptr}, count{count} {}
        // bitwise-compare two pointer_ts
        bool operator==(const pointer_t &other) const
        {
            return ptr == other.ptr && count == other.count;
        }
    };
    struct node_t
    {
        T value;
        // We're going to do atomic ops on next
        std::atomic<pointer_t> next;
        // A dummy node, next is initialized with a zero-initialized ptr
        node_t() : next{pointer_t{}} {}
        // A node filled with a given value, next is initialized with a zero-initialized ptr
        node_t(T value) : value(value), next{pointer_t{}} {}
    };

    // We're going to do atomic ops on Head
    std::atomic<pointer_t> Head;
    // We're going to do atomic ops on Tail
    std::atomic<pointer_t> Tail;

public:
    nb_queue() : Head{new node_t{}}, Tail{Head.load().ptr} {}

    void enqueue(T value)
    {
        // Node is initialized in ctor, so three lines in one
        auto node = new node_t{value}; // E1, E2, E3
        decltype(Tail.load()) tail;
        while (true)
        {                       // E4
            tail = Tail.load(); // E5
            // If we're the slow thread, we wait until the node we just loaded is freed.
            if (is_slow_thread)
            {
                {
                    std::lock_guard<std::mutex> lock{cond_mutex};
                    slow_thread_waiting = true;
                }
                // Let the main thread know we're waiting
                cond.notify_one();
                auto lock = std::unique_lock<std::mutex>{cond_mutex};
                // Wait until the main thread tells us the node is freed.
                cond.wait(lock, []
                          { return node_freed; });
            }
            // Use-after-free here in slow thread!
            auto next = tail.ptr->next.load(); // E6
            if (tail == Tail.load())
            { // E7
                if (!next.ptr)
                { // E8
                    if (tail.ptr->next.compare_exchange_weak(next, pointer_t{node, next.count + 1}))
                    {          // E9
                        break; // E10
                    }          // E11
                }
                else
                {                                                                          // E12
                    Tail.compare_exchange_weak(tail, pointer_t{next.ptr, tail.count + 1}); // E13
                }                                                                          // E14
            }                                                                              // E15
        }                                                                                  // E16

        Tail.compare_exchange_weak(tail, pointer_t{node, tail.count + 1}); // E17
    }

    bool dequeue(T *pvalue)
    {
        decltype(Head.load()) head;
        while (true)
        {                                      // D1
            head = Head.load();                // D2
            auto tail = Tail.load();           // D3
            auto next = head.ptr->next.load(); // D4
            if (head == Head.load())
            { // D5
                if (head.ptr == tail.ptr)
                { // D6
                    if (!next.ptr)
                    {                                                                      // D7
                        return false;                                                      // D8
                    }                                                                      // D9
                    Tail.compare_exchange_weak(tail, pointer_t{next.ptr, tail.count + 1}); // D10
                }
                else
                {                              // D11
                    *pvalue = next.ptr->value; // D12
                    if (Head.compare_exchange_weak(head, pointer_t{next.ptr, head.count + 1}))
                    {          // D13
                        break; // D14
                    }          // D15
                }              // D16
            }                  // D17
        }                      // D18
        delete head.ptr;       // D19
        return true;           // D20
    }
};