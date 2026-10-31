class BankAccount {
  double _balance;
  String _accountNumber;

  BankAccount(this._accountNumber, this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Successfully");
    }
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Successfully");
    } else {
      print("invalid amount please try again!");
    }
  }
}
