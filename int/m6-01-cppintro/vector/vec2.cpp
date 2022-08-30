#include <vector>
#include <string>
#include <iostream>

int main() {
  using namespace std;

  vector<string> v(2);
  v[0] = "Daniel";
  v[1] = "Carlos";
 
  vector<int> w(2);
  w[0] = 1969;
  w[1] = 2003;

  cout << v[0] << " : " << w[0] << "\n";
  cout << v[1] << " : " << w[1] << "\n";
}
