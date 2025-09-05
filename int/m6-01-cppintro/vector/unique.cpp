#include <iostream>
#include <print>
#include <vector>
#include <string>
#include <algorithm>

int main() {
  std::vector<std::string> words;
  string w;

  while (std::cin >> w) {
    words.push_back(w);
  }

  std::ranges::sort(words);

  std::println("\n{}", words[0]);
  for (std::size_t i=1; i<words.size(); ++i) {
    if (words[i-1] != words[i]) {
      std::println("\n{}", words[i]);
    }
  }
}
