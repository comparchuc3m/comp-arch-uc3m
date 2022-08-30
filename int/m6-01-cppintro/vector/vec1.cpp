#include <vector>
#include <iostream>

int main() {
  using namespace std;

  vector<int> v(4);
  v[0] = 1;
  v[1] = 2;
  v[2] = 4;
  v[3] = 8;

  cout << v[2] << "\n";
}
