import 'dart:io';
import 'dart:math';

void main() {
  String myName = 'Alice';
  String greeting = greet(myName);
  print(greeting);

  // int a = 5;
  // double b = 10.0;
  // double result = secret(a, b);
  // print(result);

  // print(calculateNaturalLog());
}

String greet(String name) {
  return 'Hello $name';
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

String calculateNaturalLog() {
  print('Enter a number: ');
  String? input = stdin.readLineSync();
  double number = double.parse(input!);
  double result = log(number);
  return "The natural log of $number is ${result.toStringAsFixed(2)}";
}
