// Defaul constructor
// Named constructor
// Static members of a class don not belong to objects of the class
// We use static members by calling the class name
// Importing and Calling functions from another class in another file

import 'dart:io';
import 'Strings.dart';

class BankAccount {
  double _balance;

  static int nrOfObjects = 0;

  // Default constructor
  BankAccount({required double balance}) : _balance = balance {
    nrOfObjects++;
  }

  // Named Constructor
  BankAccount.newClient() : _balance = 0 {
    nrOfObjects++;
  }
  BankAccount.newVIP(double startAmount) : _balance = startAmount * 1.2 {
    nrOfObjects++;
  }

  // Getter
  double get balance => _balance;

  // Setter
  set balance(double amount) => _balance = amount;

  void deposit(double amount) {
    if (amount >= 0) {
      _balance += amount;
      print('''

          ''');
      processData();
      print('''

          ''');
      print(Strings.deposit);
      print('''

          ''');
    } else {
      print('''

          ''');
      processData();
      print('''

          ''');
      print(Strings.errorentry);
      print('''

          ''');
    }
  }

  void withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      print('''

          ''');
      processData();
      print('''

          ''');
      print(Strings.withdraw);
      print('''

          ''');
    } else {
      print('''

          ''');
      processData();
      print('''

          ''');
      print(Strings.errorFunds);
      print('''

          ''');
    }
  }
}

void processData() {
  processing();
  waitPeriod();
}

void loadProcess() {
  loading();
  waitPeriod();
}

void loading() {
  print(Strings.loading);
}

void processing() {
  print(Strings.processing);
}
void waitPeriod() {
  Duration waitTime = Duration(seconds: 3);
  sleep(waitTime);
}
