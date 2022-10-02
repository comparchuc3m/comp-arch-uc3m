struct point {
  double x;
  double y;
};

int main() {
  constexpr int maxsize = 100000;
  point a[maxsize], b[maxsize], c[maxsize];  

  for (int i=0; i<maxsize; ++i) {
    a[i].x = b[i].x + c[i].x;
    a[i].y = b[i].y + c[i].y;
  }
}
