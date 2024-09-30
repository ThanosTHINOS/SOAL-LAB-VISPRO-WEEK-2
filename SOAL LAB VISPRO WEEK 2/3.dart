class ATM {
  // Private attribute to hold the balance
  double _balance = 0.0;

  // Constructor to initialize the balance (optional)
  ATM([double initialBalance = 0.0]) {
    _balance = initialBalance;
  }

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount}');
    } else {
      print('Deposit amount must be greater than zero.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew: \$${amount}');
    } else if (amount > _balance) {
      print('Insufficient balance.');
    } else {
      print('Withdrawal amount must be greater than zero.');
    }
  }

  // Method to check the balance
  double checkBalance() {
    return _balance;
  }
}

