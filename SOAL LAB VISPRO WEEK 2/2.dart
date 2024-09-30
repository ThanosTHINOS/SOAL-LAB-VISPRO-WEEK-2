class BankAccount {
  // Private attribute for balance
  double _balance = 0;

  // Constructor to initialize balance
  BankAccount(double balance) {
    _balance = balance;
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
    } else {
      print('Insufficient balance or invalid amount.');
    }
  }

  // Method to check balance
  double checkBalance() {
    return _balance;
  }
}

// Subclass SavingsAccount that inherits from BankAccount
class SavingsAccount extends BankAccount {
  double interestRate;

  // Constructor to initialize balance and interest rate
  SavingsAccount(double balance, this.interestRate) : super(balance);

  // Method to apply interest
  void applyInterest() {
    double interest = checkBalance() * (interestRate / 100);
    deposit(interest);
    print('Interest applied: \$${interest}');
  }
}

