#include <iostream>
#include <vector>
#include <string>
#include <algorithm>

int main() {
  using namespace std;

  vector<string> words;
  string w;

  while (cin >> w) {
    words.push_back(w);
  }

  sort(words.begin(), words.end());

  cout << "\n";
  cout << words[0] << "\n";
  for (std::size_t i=1; i<words.size(); ++i) {
    if (words[i-1] != words[i]) {
      cout << words[i] << "\n";
    }
  }
}
