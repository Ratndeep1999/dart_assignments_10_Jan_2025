

// 3. Interface using abstract


abstract class Account {
  void deposit(double amount);
  void withdraw(double amount);
  void showBalance();
  void fixDeposite(double princAmount);
  void loanAmount(double loanDeductionAmount);
}

class BankAccount implements Account {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  // 1
  @override
  void deposit(double amount) {
    balance = balance + amount;
    print('Deposited Amount: $amount');
    print('Updated Balance: $balance');
  }

  // 2
  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance = balance - amount;
      print('Withdrawn Amount: $amount');
      print('Updated Balance: $balance');
    }
    else {
      print('Insufficient funds');
    }
  }

  // 3
  @override
  void showBalance() {
    print('Account Holder: $accountHolder');
    print('Current Balance: $balance');
  }

  // 4
  @override
  void fixDeposite(double princAmount) {
    double anualInteRate = 5.0 ;
    int days = 200 ;
    double dailyReturn = anualInteRate / 365 / 100 ;
    double interest = princAmount * dailyReturn * days ;
    print('Total Interest on $princAmount Rs for $days Days is $interest');
    balance =  princAmount + balance + interest ;
    print("Current Balance : $balance");
  }

  // 5
  @override
  void loanAmount(double loanDeductionAmount) {
    final currentTime = DateTime.now() ;
    balance =  balance - loanDeductionAmount ;
    print("Your loan amount $loanDeductionAmount Rs Deducted on $currentTime from your Account");
    print("Current Balance : $balance");
  }
}

void main() {
  Account myAccount = BankAccount('Ratndeep Chandankhede', 500.0);
  myAccount.showBalance();
  print('\n');
  myAccount.deposit(150.0);
  print('\n');
  myAccount.withdraw(100.0);
  print('\n');
  myAccount.showBalance();
  print('\n');
  myAccount.fixDeposite(700);
  print('\n');
  myAccount.loanAmount(100);
}



/*
Account Holder: Ratndeep Chandankhede
Current Balance: 500


Deposited Amount: 150
Updated Balance: 650


Withdrawn Amount: 100
Updated Balance: 550


Account Holder: Ratndeep Chandankhede
Current Balance: 550


Total Interest on 700 Rs for 200 Days is 19.17808219178082
Current Balance : 1269.1780821917807


Your loan amount 100 Rs Deducted on 2025-01-13 15:50:18.120 from your Account
Current Balance : 1169.1780821917807
*/
