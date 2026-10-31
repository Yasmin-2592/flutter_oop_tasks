import 'bank_account.dart';
import 'employee.dart';
import 'payment_method.dart';
import 'notification_service.dart';
import 'shopping_cart.dart';

void main() {
  // Q1
  BankAccount account = BankAccount("12345", 1000);
  account.deposit(500.0);
  account.withdraw(200.0);
  print(account.balance);

  print("-------------------");

  // Q2

  Developer dev = Developer("Ali", 15000, "Flutter / Dart");
  Designer designer = Designer("Yasmin", 12000, "Figma");

  dev.displayInfo();
  designer.displayInfo();

  print("-------------------");

  // Q3

  PaymentMethod creditCard = CreditCardPayment();
  PaymentMethod cash = CashPayment();

  creditCard.pay(500.0);
  cash.pay(150.0);

  print("-------------------");

  // Q4

  List<NotificationService> notifications = [
    EmailNotification(),
    SmsNotification(),
    PushNotification(),
  ];

  for (var notification in notifications) {
    notification.sendNotification();
  }

  print("-------------------");

  // Q5

  ShoppingCart cart = ShoppingCart();

  Product laptop = Electronics("Laptop", 1000.0);
  Product tShirt = Clothing("T-Shirt", 100.0);

  cart.addProduct(laptop);
  cart.addProduct(tShirt);

  double finalTotal = cart.calculateFinalTotal();
  print("Final Total Price after discount: \$$finalTotal");
}
