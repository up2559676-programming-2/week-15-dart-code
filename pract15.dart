void main() {
  // int result = multiplyBy2(5);
  // print('Result: $result');

  speedCalculator();
}

int multiplyBy2(int number) {
  return number * 2;
}

void speedCalculator() {
  int distance = 100;
  double time = 9.58;
  double speed = distance / time;
  print('Speed: $speed');
}
