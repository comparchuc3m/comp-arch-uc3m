#include <iostream>
#include <omp.h>

constexpr long maxval = 10;//10000000;

void f() {
  int x = 17;
  #pragma omp parallel for firstprivate(x) 
  for (long i=0;i<maxval;++i) {
    x += i;  // x inicialmente vale 17
  }
  std::cout << x << '\n'; // x==17
}

int main() {
  f();
  return 0;
}
