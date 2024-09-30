import 'dart:io';
import '3.dart';

void main() {
  // Get initial balance from the user
  print('Enter initial balance:');
  double initialBalance = double.parse(stdin.readLineSync()!);

  // Create an ATM object with the initial balance
  ATM myATM = ATM(initialBalance);

  while (true) {
    // Display menu
    print('\nATM Menu:');
    print('1. Deposit money');
    print('2. Withdraw money');
    print('3. Check balance');
    print('4. Exit');
    
    // Get user choice
    print('Enter your choice:');
    String? choice = stdin.readLineSync();
    
    switch (choice) {
      case '1':
        // Deposit money
        print('Enter deposit amount:');
        double depositAmount = double.parse(stdin.readLineSync()!);
        myATM.deposit(depositAmount);
        break;

      case '2':
        // Withdraw money
        print('Enter withdrawal amount:');
        double withdrawAmount = double.parse(stdin.readLineSync()!);
        myATM.withdraw(withdrawAmount);
        break;

      case '3':
        // Check balance
        print('Current Balance: \$${myATM.checkBalance()}');
        break;

      case '4':
        // Exit the program
        print('Exiting the ATM system.');
        return;

      default:
        print('Invalid choice, please try again.');
    }
  }
}
