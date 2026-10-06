import 'dart:io';

void main() {
  
  double balance = 5000;

  
  while (true) {
    print('\n--- Simple ATM ---');
    print('1. Check balance');
    print('2. Deposit money');
    print('3. Withdraw money');
    print('4. Exit');

    stdout.write('Choose an operation: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        
        print('Current balance: ${balance.toStringAsFixed(2)}');
        break;

      case 2:
        
        stdout.write('Enter deposit amount: ');
        double amount = double.parse(stdin.readLineSync()!);

        balance += amount;

        print('Deposit successful.');
        print('Current balance: ${balance.toStringAsFixed(2)}');
        break;

      case 3:
       
        stdout.write('Enter withdrawal amount: ');
        double amount = double.parse(stdin.readLineSync()!);

        if (amount > balance) {
          print('Insufficient balance');
        } else {
          balance -= amount;

          print('Withdrawal successful.');
          print('Current balance: ${balance.toStringAsFixed(2)}');
        }
        break;

      case 4:
        
        print('Thank you for using the ATM.');
        return;

      default:
        
        print('Invalid choice. Please select 1, 2, 3, or 4.');
    }
  }
}