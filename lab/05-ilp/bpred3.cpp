#include "generate.hpp"

#include <chrono>
#include <iostream>
#include <random>

double average_positive(const std::vector<double> & v) {
  static_assert(sizeof(uint64_t) == sizeof(double)); // Compile time check
  double sum = 0.0;
  int n = 0;
  const auto max = std::size(v);
  for (unsigned long i=0; i<max; ++i) {
    const uint64_t mask = (v[i]>0.0) ? static_cast<uint64_t>(-1) : 0;
    const auto x = std::bit_cast<uint64_t>(v[i]);
    sum += std::bit_cast<double>(mask & x);
    n += static_cast<int>(1U & static_cast<uint32_t>(mask));
  }
  return sum / static_cast<double>(n);
}

int main() {
  using namespace std::chrono;
  std::mt19937_64 gen{0};
  constexpr int max = 1'000'000;
  auto v = generate(gen, max);

  auto t1 = std::chrono::high_resolution_clock::now();
  auto avg1 = average_positive(v);
  auto t2 = high_resolution_clock::now();
  std::cout << "Average = " << avg1 << '\n';
  std::cout << "Averaging time: " << duration_cast<microseconds>(t2 - t1).count() << " us\n";
}
