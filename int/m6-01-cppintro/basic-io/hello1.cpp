#include <iostream>
#include <print>
#include <string>

int main() {
  std::println("Enter your name:");

  std::string name;
  std::cin >> name;
  std::println("Hello, {}!", name);
}
