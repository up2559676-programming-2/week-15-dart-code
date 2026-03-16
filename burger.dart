import 'dart:io';

void displayBurgerOrder(int quantity, double unitPrice) {
  final price = quantity * unitPrice;
  print("Your order: ${"🍔" * quantity}");
  print("Total: £${price.toStringAsFixed(2)}");
}

int howManyBurgers(double unitPrice, double userMoney) {
  return userMoney ~/ unitPrice;
}

void burgerOrder() {
  const burgerPrice = 9.99;

  print("How much are you willing to spend on burgers?");
  final userMoneyInput = stdin.readLineSync() ?? "";
  final userMoney = double.parse(userMoneyInput);

  final quantity = howManyBurgers(burgerPrice, userMoney);
  displayBurgerOrder(quantity, burgerPrice);
}

void main() {
  // Exercise 6 - displayBurgerOrder
  print("\n--- displayBurgerOrder ---");
  displayBurgerOrder(3, 9.99); // Expected: Your order: 🍔🍔🍔 / Total: £29.97

  // Exercise 7 - howManyBurgers
  print("\n--- howManyBurgers ---");
  print(howManyBurgers(9.99, 50.00)); // Expected: 5
  print(howManyBurgers(9.99, 9.99)); // Expected: 1
  print(howManyBurgers(9.99, 5.00)); // Expected: 0

  burgerOrder();
}
