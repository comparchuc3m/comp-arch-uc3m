#include <vector>
#include <string>
#include <print>

int main() {
  std::vector<std::string> v(2);
  v[0] = "Daniel";
  v[1] = "Carlos";
 
  std::vector<int> w(2);
  w[0] = 1969;
  w[1] = 2003;

  std::println("{} : {}", v[0], w[0]);
  std::println("{} : {}", v[1], w[1]);
}
