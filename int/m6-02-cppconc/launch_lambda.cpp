void myfunc(image & img);

void g() {
  image img = get_image();
  std::jthread t1{
    [&] {
      fft(img);
      filter(img);
      inv_fft(img);
    }
  };
  //...
}
