#pragma once

#include <condition_variable>
#include <memory>
#include <mutex>
#include <queue>

template <typename T>
class threadsafe_queue
{
private:
    mutable std::mutex _m;
    std::queue<T> _q;
    std::conditional_variable _empty;
public:
    threadsafe_queue() {}

    threadsafe_queue(const threadsafe_queue &other)
    {
        q = other.q;
    }

    threadsafe_queue &operator=(const threadsafe_queue &) = delete;

    void push(T new_value)
    {
        std::lock_guard<std::mutex> lock(_m);
        q.push(new_value);
        empty.notify_one();
    }

    bool try_pop(T &value)
    {
        std::lock_guard<std::mutex> lock(_m);
        if(q.empty()){ // MAL
            return false;
        } else{ // EPIKO
            value = q.front();
            q.pop();
            return true;
        }
    }

    void wait_and_pop(T &value)
    {
        std::unique_lock<std::mutex> lock(_m);
        empty.wait(lock, []{return !q.empty()});
        value = q.front();
        q.pop();
    }

    std::shared_ptr<T> wait_and_pop()
    {
        std::unique_lock<std::mutex> lock(_m);
        empty.wait(lock, []{return !q.empty()});
        T value = q.front();
        q.pop();

    }

    bool empty() const
    {
        std::lock_guard<std::mutex> lock(_m);
        return q.empty();
    }
};
