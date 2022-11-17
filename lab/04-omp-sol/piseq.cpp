#include <iomanip>
#include <iostream>
#include <chrono>

int main() {
  constexpr long nsteps = 10'000'000;
  constexpr double deltax = 1.0 / nsteps;

  using namespace std::chrono;
  using clk = high_resolution_clock;
  auto start = clk::now();

  double sum = 0.0;
  for (long i = 0; i < nsteps; ++i) {
    const double x = (static_cast<double>(i) + 0.5) * deltax;
    sum += 1.0 / (1.0 + x * x);
  }
  const double pi_value = 4 * sum * deltax;

  auto end = clk::now();
  auto diff = duration_cast<milliseconds>(end-start);

  constexpr int precision = 10;
  std::cout << "pi_value = " << std::setprecision(precision) << pi_value
            << '\n';
  std::cout << "Time = " << diff.count() << "us\n";

}
