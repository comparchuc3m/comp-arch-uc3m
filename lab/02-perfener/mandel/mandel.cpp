#include <bitset>
#include <complex>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

constexpr int iter = 50;
constexpr double lim = 2.0 * 2.0;
constexpr std::complex<double> origin{1.5, 1.0};

class pbm_buffer {
public:
  explicit pbm_buffer(int n) noexcept : size_{n}, buffer_{} {
    buffer_.reserve(n * n);
  }

  void disable_pixel() noexcept {
    current_byte[bit_num_] = false;
  }

  void enable_pixel() {
    current_byte[bit_num_] = true;
  }

  void finalize_pixel(int x) noexcept {
    bit_num_--;
    if (bit_num_ < 0) {
      buffer_.push_back(static_cast<char>(current_byte.to_ulong()));
      bit_num_ = 7;
      current_byte.reset();
    }
    else if (x == size_ - 1) {
      buffer_.push_back(static_cast<char>(current_byte.to_ulong()));
      bit_num_ = 7;
      current_byte.reset();
    }
  }

  [[nodiscard]] auto data() const noexcept { return buffer_.data(); }
  [[nodiscard]] auto ssize() const noexcept { return std::ssize(buffer_); }

private:
  int size_;
  char bit_num_ = 7;
  std::bitset<8> current_byte;
  std::vector<char> buffer_;
};

class pbm_file {
public:
  explicit pbm_file(std::string_view name) noexcept : os_{name.data()} {}

  void write_header(int n) noexcept {
    os_ << "P4\n"
        << n << ' ' << n << '\n';
  }

  void write(pbm_buffer &buf) noexcept {
    os_.write(buf.data(), buf.ssize());
  }

private:
  std::ofstream os_;
};

int main(int argc, char **argv) {

  if (argc < 3) return -1;
  const int n = std::stoi(argv[1]);
  pbm_file os{argv[2]};
  os.write_header(n);

  const double inv_n = 2.0 / n;
  pbm_buffer buffer{n};
  for (int y = 0; y < n; ++y) {
    for (int x = 0; x < n; ++x) {
      std::complex<double> Z{};

      const std::complex<double> pos{double(x), double(y)};
      const std::complex<double> C = inv_n * pos - origin;

      double norm_value = 0.0;
      for (int i = 0; i < iter; ++i) {
        Z = Z * Z + C;
        norm_value = norm(Z);
        if (norm_value > lim) {
          buffer.disable_pixel();
          break;
        }
      }

      if (norm_value <= lim) {
        buffer.enable_pixel();
      }

      buffer.finalize_pixel(x);
    }
  }
  os.write(buffer);
}