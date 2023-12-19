void main() {
  // String myName = 'Alice';
  // greet(myName);

  int a = 5;
  double b = 10.0;
  double result = secret(a, b);
  print(result);
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

double secret(int x, double y) {
  x += 5;
  y /= 5;
  x ~/= 3;
  y *= 2;
  x++;
  double result = x * y;
  return result;
}
