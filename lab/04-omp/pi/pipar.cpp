#include <iostream>
#include <iomanip>
#include <omp.h>
#include <vector>

int main() {
  constexpr long nsteps = 10'000'000;
  double deltax = 1.0 / nsteps;

  int nthreads = 0;
#pragma omp parallel
  nthreads = omp_get_num_threads();

  std::vector<double> partial_sum(nthreads);

#pragma omp parallel
  {
    int id = omp_get_thread_num();
    double sum = 0.0;
    for (long i = id; i < nsteps; i+=nthreads) {
      double x = (static_cast<double>(i) + 0.5) * deltax;
      sum += 1.0 / (1.0 + x * x);
    }
    partial_sum[id] = sum;
    //double pi_value = 4 * sum * deltax;
  }

  double result = 0.0;
  for (int i=0; i<nthreads; ++i) {
    result += partial_sum[i];
  }
  double pi_value = 4 * result * deltax;
  std::cout << "pi_value = " << std::setprecision(10) << pi_value << "\n";
}