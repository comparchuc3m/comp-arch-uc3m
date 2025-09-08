#include <print>
#include <iostream>

int main() {
  std::println("Hello C++");

  std::println(std::cout, "Hello C++");

  std::print(std::cerr, "Error\n");

  return 0;
}
