#include <iostream>
#include <thread>
#include <vector>

#include <threadsafe_queue.hpp>

void thread_fn(threadsafe_queue<int>& q, unsigned int n) {
    for ( unsigned int i = 0; i < n; i++ ) {
        int val;
        bool pop = q.try_pop(val);
        q.push(i);
    }
}

int main(int argc, char** argv) {
    if ( argc < 3 ) {
        std::cout << "usage: ./b_bench N T" << std::endl;
        return 1;
    }

    unsigned int n_push = std::stoi(argv[1]);
    unsigned int n_thread = std::stoi(argv[2]);

    // non blocking queue
    threadsafe_queue<int> q;
    q.push(1);

    std::cout << "starting benchmark" << std::endl;
    std::vector<std::thread> threads;
    for ( unsigned int i = 0; i < n_thread; i++ ) {
        threads.push_back(std::thread(thread_fn, std::ref(q), n_push));
    }
    
    auto ini = std::chrono::steady_clock::now();
    for ( unsigned int i = 0; i < n_thread; i++ ) {
        threads[i].join();
    }
    auto end = std::chrono::steady_clock::now();
    double ms = static_cast<double>(std::chrono::duration_cast<std::chrono::nanoseconds>(end - ini).count()) / 1000000.0;
    std::cout << "done. (" << ms << " ms)" << std::endl;
}