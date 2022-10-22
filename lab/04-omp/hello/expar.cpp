#include <iostream>
#include <omp.h>

int main() {
#pragma omp parallel
  {
    int id = omp_get_thread_num();
    std::cout << "Hello(" << id << ") ";
    std::cout << "world(" << id << ")\n";
  }
}