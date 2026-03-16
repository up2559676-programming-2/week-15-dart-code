import 'dart:io';
import 'dart:math';

int multiplyBy2(int number) {
  return number * 2;
}

void speedCalculator(double distance, double time) {
  double speed = distance / time;
  print('Speed: $speed');
}

void typeConversion() {
  int i = 5;
  double d = 10.65;
  print("i: $i, d: $d");

  // to integer
  int dAsInt = d.toInt(); // 10
  int dFloor = d.floor(); // 10
  int dCeil = d.ceil(); // 11
  int dRound = d.round(); // 11
  print("dAsInt: $dAsInt, dFloor: $dFloor, dCeil: $dCeil, dRound: $dRound");

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

void sayName() {
  print("Oliver");
}

void studentDetails() {
  print("My name is Oliver King");
  print("My student number is 2559676");
  print("My email address is oliver.king@port.ac.uk");
}

void eurosToPounds(double euros) {
  const conversion_rate = 0.86;
  print(euros * conversion_rate);
}

void fahrenheitToCelsius(double fahrenheit) {
  final celsius = (fahrenheit - 32) * 5.0 / 9.0;
  print(celsius);
}

void areaOfCircle() {
  print("Enter the radius of a circle:");
  String radiusInput = stdin.readLineSync() ?? "";
  double radius = double.parse(radiusInput);
  final area = pi * pow(radius, 2);
  print(area);
}

double circumferenceOfCircle2(double radius) {
  return 2 * pi * radius;
}

double areaOfCircle2(double radius) {
  return pi * pow(radius, 2);
}

void circleInfo() {
  print("Enter the radius of a circle:");
  final radiusInput = stdin.readLineSync() ?? "";
  final radius = double.parse(radiusInput);

  final circumference = circumferenceOfCircle2(radius);
  print("Circumference: $circumference");

  final area = areaOfCircle2(radius);
  print("Area: $area");
}

double hypotenuseOfTriangle(double a, double b) {
  final cSquared = pow(a, 2) + pow(b, 2);
  return sqrt(cSquared);
}

void main() {
  // Exercise 1 - sayName
  print("--- sayName ---");
  sayName();

  // Exercise 2 - studentDetails
  print("\n--- studentDetails ---");
  studentDetails();

  // Exercise 3 - eurosToPounds
  print("\n--- eurosToPounds ---");
  eurosToPounds(20); // Expected: 17.2
  eurosToPounds(100); // Expected: 86.0

  // Exercise 4 - fahrenheitToCelsius
  print("\n--- fahrenheitToCelsius ---");
  fahrenheitToCelsius(32); // Expected: 0.0
  fahrenheitToCelsius(212); // Expected: 100.0
  fahrenheitToCelsius(98.6); // Expected: 37.0

  // Exercise 5 - areaOfCircle (prompts for input)
  print("\n--- areaOfCircle (enter a radius e.g. 5) ---");
  areaOfCircle();

  // Exercise 5 - areaOfCircle2 and circumferenceOfCircle2 (return versions)
  print("\n--- areaOfCircle2 & circumferenceOfCircle2 ---");
  print(areaOfCircle2(5)); // Expected: 78.53...
  print(circumferenceOfCircle2(5)); // Expected: 31.41...

  // Exercise 5 - circleInfo (prompts for input once)
  print("\n--- circleInfo (enter a radius e.g. 5) ---");
  circleInfo();

  // Exercise 9 - hypotenuseOfTriangle
  print("\n--- hypotenuseOfTriangle ---");
  print(hypotenuseOfTriangle(3, 4)); // Expected: 5.0
  print(hypotenuseOfTriangle(5, 12)); // Expected: 13.0
}
