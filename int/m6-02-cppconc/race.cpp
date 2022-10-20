int x = 42;

void f() { ++x; }
void g() { x=0; }
void h() { std::cout << "C++" << "\n"; }
void i() { std::cout << "Python" << "\n"; }

void data_races() {
  std::thread t1{f}; std::thread t2{g};
  t1.join(); t2.join();

  std::thread t3{h}; std::thread t4{i};
  t3.join(); t4.join();
}
