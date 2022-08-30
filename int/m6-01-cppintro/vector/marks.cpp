#include <vector>
#include <iostream>

int main() {
  using namespace std;

  vector<double> marks;

  double x;
  while (cin >> x) { // x OK?
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

  cout << "Average: " << average << "\n";
  cout << "Max: " << max_val << "\n";
  cout << "Min: " << min_val << "\n";
}
