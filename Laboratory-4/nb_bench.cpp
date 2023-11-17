#include <iostream>
#include <thread>
#include <vector>

#include <nonblocking_queue.hpp>

void thread_fn(nb_queue<int>& q, unsigned int n) {
    for ( unsigned int i = 0; i < n; i++ ) {
        q.enqueue(i);
        q.enqueue(i);
        int val;
        q.dequeue(&val);
    }
}

int main(int argc, char** argv) {
    if ( argc < 3 ) {
        std::cout << "usage: ./nb_bench N T" << std::endl;
        return 1;
    }

    unsigned int n_push = std::stoi(argv[1]);
    unsigned int n_thread = std::stoi(argv[2]);

    // non blocking queue
    nb_queue<int> q;

    std::cout << "starting benchmark" << std::endl;
    std::vector<std::thread> threads;
    for ( unsigned int i = 0; i < n_thread; i++ ) {
        std::cout << "starting thread " << i << std::endl;
        threads.push_back(std::thread(thread_fn, std::ref(q), n_push));
    }
}