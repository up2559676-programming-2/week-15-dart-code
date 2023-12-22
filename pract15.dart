import 'dart:io';
import 'dart:math';

void main() {
  int result = multiplyBy2(5);
  print('Result: $result');

  // int distance = 100;
  // double time = 9.58;
  // speedCalculator(distance, time);

  // typeConversion();

  // String greetings = getGreetings();
  // print(greetings);

  // askForStudentNumber();

  // circumferenceOfCircle();

  // pizzaOrder();
}

int multiplyBy2(int number) {
  return number * 2;
}

void speedCalculator(int miles, int hours) {
  double speed = miles / hours;
  print('Speed in mph: $speed');
}

void typeConversion() {
  int i = 5;
  double d = 10.65;
  print("i: $i, d: $d");

  // to integer
  int dAsInt = d.toInt(); // 10
  int dFloor = d.floor(); // 10
  int dCeil = d.ceil(); // 11
  int dRounded = d.round(); // 11
  print("dAsInt: $dAsInt, dFloor: $dFloor, dCeil: $dCeil, dRounded: $dRounded");

  // to double
  double iAsDouble = i.toDouble(); // 5.0
  print("iAsDouble: $iAsDouble");

  // to string
  String iAsString = i.toString(); // "5"
  String dAsString = d.toString(); // "10.65"
  String dAsFixed = d.toStringAsFixed(1); // "10.7"
  print("iAsString: $iAsString, dAsString: $dAsString, dAsFixed: $dAsFixed");

  // from string
  i = int.parse(iAsString); // 5
  d = double.parse(dAsString); // 10.65
  print("i: $i, d: $d");
}

String getGreetings() {
  String arabic = 'مرحبا';
  String hindi = 'नमस्ते';
  String russian = 'Привет';
  String chinese = '你好';
  String emoji = '👋';

  return '$arabic, $hindi, $russian, $chinese, $emoji';
}

void birthdayMessage(String name, int ageLastYear) {
  print("Happy " + (ageLastYear + 1).toString() + "th birthday, " + name + "!");
  print("Happy ${ageLastYear + 1}th birthday, $name!");
}

void askForStudentNumber() {
  print("What is your student number?");
  String? input = stdin.readLineSync();
  int studentNumber = int.parse(input!);
  print("Your student number is $studentNumber");
}

void circumferenceOfCircle() {
  print('Enter the radius of a circle:');
  String? radiusInput = stdin.readLineSync();
  double radius = double.parse(radiusInput!);
  double circumference = 2 * pi * radius;
  print('Circumference: ${circumference.toStringAsFixed(2)}');
}

String getPizzaType() {
  print('What type of pizza do you want?');
  String? input = stdin.readLineSync();
  return input!;
}

int getPizzaSize() {
  print('Enter the diameter of the pizza:');
  String? input = stdin.readLineSync();
  return int.parse(input!);
}

double getPizzaPrice(int radius) {
  double pricePerSquareInch = 0.05;
  double area = pi * pow(radius / 2, 2);
  return area * pricePerSquareInch;
}

void pizzaOrder() {
  String pizzaType = getPizzaType();
  int pizzaSize = getPizzaSize();
  double pizzaPrice = getPizzaPrice(pizzaSize);
  print('A $pizzaSize inch £$pizzaType pizza '
      'costs £${pizzaPrice.toStringAsFixed(2)}');
}
