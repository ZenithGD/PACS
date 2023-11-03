#pragma once

#include <atomic>
#include <functional>
#include <vector>

#include<join_threads.hpp>
#include<threadsafe_queue.hpp>

class thread_pool
{
  join_threads _joiner;

 

  using task_type = void();
  
  threadsafe_queue<task_type> q;
  void worker_thread()
  {
    while(true){
      task_type task;
      q.wait_and_pop(task);
      task();
      if(q.empty()){
        
      }
    }
  }

  public:
  thread_pool(size_t num_threads = std::thread::hardware_concurrency())
    : // please complete
  {
      // complete

  }

  ~thread_pool()
  {
    wait();
  }

  void wait()
  {
      // wait for completion

      // active waiting
  }

  template<typename F>
    void submit(F f)
    {
	// please complete
    }
};
