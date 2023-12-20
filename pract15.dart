import 'dart:io';

void main() {
  // int result = multiplyBy2(5);
  // print('Result: $result');

  // int distance = 100;
  // double time = 9.58;
  // speedCalculator(distance, time);

  // typeConversion();

  // String greetings = getGreetings();
  // print(greetings);

  askForStudentNumber();
}

int multiplyBy2(int number) {
  return number * 2;
}

void speedCalculator(int distance, double time) {
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
