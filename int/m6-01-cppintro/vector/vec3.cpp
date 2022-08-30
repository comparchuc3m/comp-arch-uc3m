#include <vector>
#include <string>
#include <iostream>

int main() {
  using namespace std;

  vector<string> v { "Daniel", "Carlos" };
 
  vector<int> w { 1969, 2003 };

  cout << v[0] << " : " << w[0] << "\n";
  cout << v[1] << " : " << w[1] << "\n";
}
