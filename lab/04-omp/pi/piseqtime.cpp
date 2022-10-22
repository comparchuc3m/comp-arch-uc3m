#include <chrono>
#include <iomanip>
#include <iostream>

int main() {
  using namespace std::chrono;
  using clk = high_resolution_clock;

  auto start = clk::now();

  constexpr long nsteps = 10'000'000;
  double deltax = 1.0 / nsteps;

  double sum = 0.0;
  for (long i = 0; i < nsteps; ++i) {
    double x = (static_cast<double>(i) + 0.5) * deltax;
    sum += 1.0 / (1.0 + x * x);
  }
  double pi_value = 4 * sum * deltax;

  auto stop = clk::now();
  auto diff = duration_cast<microseconds>(stop - start);

  std::cout << "pi_value = " << std::setprecision(10) << pi_value << "\n";
  std::cout << "Time = " << diff.count() << "ms\n";
}