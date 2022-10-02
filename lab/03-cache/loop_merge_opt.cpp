int main(){
  constexpr int maxsize = 100000;

  float u[maxsize];
  float v[maxsize];
  float z[maxsize];
  float t[maxsize];

  for (int i=0; i<maxsize; ++i) {
    u[i] = z[i] + t[i];
    v[i] = u[i] + t[i];
  }
}
