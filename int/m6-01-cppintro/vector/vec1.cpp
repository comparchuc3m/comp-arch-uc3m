#include <vector>
#include <iostream>
#include <print>

int main() {
  std::vector<int> v(4);
  v[0] = 1;
  v[1] = 2;
  v[2] = 4;
  v[3] = 8;

  std::println("{}", v[2]);
}
