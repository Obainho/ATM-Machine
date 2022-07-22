import 'dart:io';
import 'bank_account.dart';
import 'Strings.dart';

void main() {
  var account = BankAccount(balance: 1000);
  var account2 = BankAccount.newClient();
  var account3 = BankAccount.newVIP(5000);

  account.deposit(2000);
  print('₦${account.balance}');

  account2.deposit(5000);
  print('₦${account2.balance}');

  account3.deposit(10000);
  print('₦${account3.balance}');
  print('');

  account.withdraw(1000);
  print('₦${account.balance}');

  account2.withdraw(5500);
  print('₦${account2.balance}');

  account3.withdraw(1000);
  print('₦${account3.balance}');
  print('');


// Accepting User input data on terminal
  int? choice;
  int? choice2;
  String options = """
        --------------------- MAIN MENU ---------------------
        -----------------------------------------------------
        Please select the transaction you wish to make below
        -----------------------------------------------------
        1. Deposit
        2. Withdrawal
        3. Balance Enquiry
        4. Exit
        """;

  String options2 = """
        Would you like to perform any other transaction? 
        Please select an option below...
        1. Yes
        2. No
        """;
  print('''

    ''');
  loadProcess();
  print('''

    ''');
  print(options);
  print("");

  do {
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print('''

          ''');
        loadProcess();
        print('''

          ''');
        print('''
        Please enter the amount you wish to deposit..  
        ''');
        print('''

          ''');
        account.deposit(double.parse(stdin.readLineSync()!));

        print(options2);
        print('');
        choice2 = int.parse(stdin.readLineSync()!);
        print('''

          ''');
        loadProcess();
        print('''

          ''');
          if (choice2 == 1) {
            print(options);
            print('');
          }
          else if (choice2 == 2) {
            print("""
        Thank you for banking with us.
        Kindly enter (4) to exit.
            """);
            print("");
          }
          else {
            print('${Strings.errorOpt}');
            print('''

            ''');
            print(options);
            print("");
          }
        break;

      case 2:
        print('''

          ''');
        loadProcess();
        print('''

          ''');
        print('''
        Please enter the amount you wish to withdraw..
         ''');
        print('''

          ''');
        account.withdraw(double.parse(stdin.readLineSync()!));

        print(options2);
        print('');
        choice2 = int.parse(stdin.readLineSync()!);
        print('''

          ''');
        loadProcess();
        print('''

          ''');
          if (choice2 == 1) {
            print(options);
            print('');
          }
          else if (choice2 == 2) {
            print("""
        Thank you for banking with us.
        Kindly enter (4) to exit.
            """);
            print("");
          }
          else {
            print('${Strings.errorOpt}');
            print('''

            ''');
            print(options);
            print("");
          }
        break;

      case 3:
        print('''

          ''');
        processData();
        print('''

          ''');
        print("""
        Your available balance is ₦${account.balance.toStringAsFixed(2)}
          """);
        print('''

          ''');
        print(options2);
        print('');
        choice2 = int.parse(stdin.readLineSync()!);
        print('''

          ''');
        loadProcess();
        print('''

          ''');
          if (choice2 == 1) {
            print(options);
            print('');
          }
          else if (choice2 == 2) {
            print("""
        Thank you for banking with us.
        Kindly enter (4) to exit.
            """);
            print("");
          }
          else {
            print('${Strings.errorOpt}');
            print('''

            ''');
            print(options);
            print("");
          }
        break;

      case 4:
        print('''

          ''');
        loadProcess();
        print('''

          ''');
        print("""
        Goodbye...
            """);
        print("");
        break;

      default:
        print('''

          ''');
        processData();
        print('''

          ''');
        print('${Strings.errorOpt}');
        print('''

          ''');
        print(options);
        print("");
    }
  } while (choice != 4);
}

