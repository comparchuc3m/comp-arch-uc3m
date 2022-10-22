#include <iostream>
#include <omp.h>

constexpr long maxval = 10;//10000000;

void f() {
  int x = 17;
  #pragma omp parallel for firstprivate(x) lastprivate(x) 
  for (long i=0;i<maxval;++i) {
    x += i;  // x inicialmente vale 17
  }
  std::cout << x << '\n'; // x valor iteración i==maxval-1
}

int main() {
  f();
  return 0;
}
