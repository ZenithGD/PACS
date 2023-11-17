#include <stdint.h>
#include <atomic>

template <typename ValueType, typename Count = uint32_t>
class nb_queue {
public:
    // initialize
    nb_queue() : _head(new node_t), _tail(_head.load().ptr) {}

    // enqueue
    void enqueue(const ValueType& v) {
        pointer_t tail;
        // E1, E2, E3 node initialization
        node_t* node = new node_t(v);
        // E4
        while ( true ) {
            // E5. Read Tail.ptr and Tail.count together
            tail = _tail.load();
            // E6. Read next ptr and count fields together
            auto next = tail.ptr->next.load(); 
            // E7. Are tail and next consistent?
            if (tail == _tail.load()) {
                // E8. Was Tail pointing to the last node?
                if ( !next.ptr ) {
                    // E9. Try to link node at the end of the linked list
                    if ( tail.ptr->next.compare_exchange_strong(next, pointer_t(node, next.count + 1)) ) {
                        // E10, E11. Enqueue is done. Exit loop
                        break;
                    }
                }
                // E12. Tail was not pointing to the last node
                else {
                    // E13. Try to swing Tail to the next node
                    _tail.compare_exchange_strong(tail, pointer_t(next.ptr, tail.count + 1));
                }
            }
        }
        // E14-E17. Enqueue is done. Try to swing Tail to the inserted node
        _tail.compare_exchange_strong(tail, pointer_t(node, tail.count + 1));
    }

    bool dequeue(ValueType* pvalue) {
        pointer_t head;
        // D1. Keep trying until Dequeue is done
        while ( true ) {
            // D2. Read Head
            head = _head.load();
            // D3. Read Tail
            pointer_t tail = _tail.load();
            // D4. Read Head.ptr–>next
            pointer_t next = head.ptr->next.load();
            // D5. Are head, tail, and next consistent?
            if ( head == _head.load() ) {
                //  D6. Is queue empty or Tail falling behind?
                if ( head.ptr == tail.ptr ) {
                    // D7. Is queue empty?
                    if ( !next.ptr ) {
                        // D8, D9. Queue is empty, couldn’t dequeue
                        return false;
                    }
                    // D10. Tail is falling behind. Try to advance it
                    _tail.compare_exchange_strong(tail, pointer_t(next.ptr, tail.count + 1));
                }
                // D11.No need to deal with Tail
                else {
                    // D12. Read value before CAS, otherwise another dequeue might free the next node
                    *pvalue = next.ptr->value;
                    // D13. Try to swing Head to the next node
                    if ( _head.compare_exchange_strong(head, pointer_t(next.ptr, head.count + 1)) ) {
                        // D14-D18. Dequeue is done. Exit loop
                        break;
                    }
                }
            }
        };
        delete head.ptr;
        return true;
    }
private:
    struct node_t;

    // pointer to a node, and count references
    struct pointer_t {
        // no need to make ptr atomic again
        node_t* ptr;
        Count count;

        pointer_t() : ptr(nullptr), count(0) {}
        pointer_t(node_t* p, Count c = 0) : ptr(p), count(c) {}

        bool operator==(const pointer_t& that) const {
            return this->ptr == that.ptr && this->count == that.count;
        }
    };

    // value and pointer to next
    struct node_t {
        ValueType value;
        // pointers are atomic in order to ensure atomic modification of the queue
        std::atomic<pointer_t> next;

        node_t() : value(ValueType{}), next() {}
        node_t(const ValueType& v, pointer_t n = nullptr) : value(v), next(n) {}
    };

    std::atomic<pointer_t> _head;
    std::atomic<pointer_t> _tail;
};