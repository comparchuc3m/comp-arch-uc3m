constexpr int maxsize = 100000;

struct points {
  double x[maxsize];
  double y[maxsize];
};

int main() {
  points a{}, b{}, c{}; // Default init

  for (int i=0; i<maxsize; ++i) {
    a.x[i] = b.x[i] + c.x[i];
    a.y[i] = b.y[i] + c.y[i];
  }
}
