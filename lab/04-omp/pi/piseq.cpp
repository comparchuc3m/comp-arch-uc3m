#include <iostream>
#include <iomanip>

int main() {
  constexpr long nsteps = 10'000'000;
  double deltax = 1.0 / nsteps;

  double sum = 0.0;
  for (long i=0; i<nsteps; ++i) {
    double x = (static_cast<double>(i) + 0.5) * deltax;
    sum += 1.0 / (1.0 + x * x);
  }
  double pi_value = 4 * sum * deltax;

  std::cout << "pi_value = " << std::setprecision(10) << pi_value << "\n";
}