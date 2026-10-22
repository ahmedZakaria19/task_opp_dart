class BankAccount {
  String accountHolder;
  double _balance = 0;
  BankAccount(this.accountHolder);
  double get balance => this._balance;
  set balance(double balance) {
    if (balance < 0)
      print("Not allow negative number");
    else
      this._balance = balance;
  }

  void deposite(double amount) {
    if (amount < 0)
      print("Not allow negative number");
    else {
      this._balance += amount;
      print("balance: $_balance");
    }
  }

  void withdraw(double amount) {
    if (amount <= this._balance) {
      this._balance -= amount;
      print("balance: $_balance");
    } else
      print("Your balance is insufficient.");
  }
}

void main() {
  BankAccount b = BankAccount("Ahmed Zakaria");
  b.deposite(500);
  b.withdraw(200);
}
