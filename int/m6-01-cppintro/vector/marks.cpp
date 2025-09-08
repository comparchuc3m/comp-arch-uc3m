#include <vector>
#include <iostream>
#include <print>

int main() {
  std::vector<double> marks;

  double x;
  while (std::cin >> x) { // x OK?
    marks.push_back(x);
  }

  double average = 0.0;
  double max_val = marks[0];
  double min_val = marks[0];
  for (auto m: marks) {
    average += m;
    max_val = (m >max_val) ? m : max_val;
    min_val = (m <min_val) ? m : min_val;
  }
  average /= static_cast<double>(marks.size());

  std::println("Average: {}", average);
  std::println("Max: {}", max_val);
  std::println("Min: {}", min_val);
}
