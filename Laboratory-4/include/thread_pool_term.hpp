#pragma once

#include <atomic>
#include <functional>
#include <vector>
#include <algorithm>
#include <condition_variable>

#include <join_threads.hpp>
#include <threadsafe_queue.hpp>

class thread_pool_term {
    
    std::vector<std::thread> _threads;
    size_t _n_threads;
    join_threads _joiner;
    bool _done;

    using task_type = void();

    threadsafe_queue<std::function<task_type>> q;
    void worker_thread() {
        std::function<task_type> task;
        while ( !q.empty() || !_done ) {
            if ( q.try_pop(task) ) {
                task();
            }
            else {
                std::this_thread::yield();
            }
        }
    }

public:
    thread_pool_term(size_t num_threads = std::thread::hardware_concurrency())
        : _n_threads(num_threads), _joiner(_threads), _done(false)
    {
        // a better approach would be to allow the threads to run from the start
        // and spin (or yield control) until there's tasks available
        // and let main notify the end of execution
    }

    void wait()
    {
        // wait for completion
        for ( size_t i = 0; i < _n_threads; i++ ) {
            // 'this' is a pointer to the current instance
            // thread needs the pointer to the instance because worker_thread is a method of this class
            // and needs to know the instance state (it's an implicit parameter)
            _threads.push_back(std::thread(&thread_pool_term::worker_thread, this));
        }

        // active waiting (not optimal!!!)
        while ( !q.empty() || !_done ) { 
            std::this_thread::sleep_for(std::chrono::milliseconds(10));
        }
    }

    template <typename F>
    void submit(F f)
    {
        q.push(std::function<task_type>(f));
    }

    void finish() {
        _done = true;
    }
};