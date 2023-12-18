void main() {
  // int result = multiplyBy2(5);
  // print('Result: $result');

  int distance = 100;
  double time = 9.58;
  speedCalculator(distance, time);
}

int multiplyBy2(int number) {
  return number * 2;
}

void speedCalculator(int distance, double time) {
  double speed = distance / time;
  print('Speed: $speed');
}
