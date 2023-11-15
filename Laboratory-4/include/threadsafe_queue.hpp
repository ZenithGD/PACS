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
    std::condition_variable _empty;
public:
    threadsafe_queue() {}

    threadsafe_queue(const threadsafe_queue &other)
    {
        _q = other.q;
    }

    threadsafe_queue &operator=(const threadsafe_queue &) = delete;

    void push(T new_value)
    {
        std::lock_guard<std::mutex> lock(_m);
        _q.push(new_value);
        _empty.notify_one();
    }

    bool try_pop(T &value)
    {
        std::lock_guard<std::mutex> lock(_m);
        if(_q.empty()){ // MAL
            return false;
        } 
        else { // EPIKO
            value = _q.front();
            _q.pop();
            return true;
        }
    }

    void wait_and_pop(T &value)
    {
        std::unique_lock<std::mutex> lock(_m);
        _empty.wait(lock, [=]{return !_q.empty(); });
        value = _q.front();
        _q.pop();
    }

    std::shared_ptr<T> wait_and_pop()
    {
        std::unique_lock<std::mutex> lock(_m);
        _empty.wait(lock, [=]{return !_q.empty(); });
        std::shared_ptr<T> value(_q.front());
        _q.pop();
        return value;
    }

    bool empty() const
    {
        std::lock_guard<std::mutex> lock(_m);
        return _q.empty();
    }
};
