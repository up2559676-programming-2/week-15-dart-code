void main() {
  String myName = 'Alice';
  greet(myName);
}

void greet(String name) {
  print('Hello, $name!');
}

double celsiusToFahrenheit(double celsius) {
  double fahrenheit = celsius * 9 / 5 + 32;
  return fahrenheit;
}

int mystery(int num) {
  num++;
  num--;
  num ~/= 2;
  return num;
}
