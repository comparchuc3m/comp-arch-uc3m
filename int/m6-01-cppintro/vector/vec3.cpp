#include <vector>
#include <string>
#include <iostream>
#include <print>

int main() {
  std::vector<std::string> v { "Daniel", "Carlos" };
 
  std::vector<int> w { 1969, 2003 };

  std::println("{} : {}", v[0], w[0]);
  std::println("{} : {}", v[1], w[1]);
}
