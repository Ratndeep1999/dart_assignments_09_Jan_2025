

/*
5. BankAccount Class

- Properties: accountHolder, balance
- Constructors:
  - Default (with both properties)
  - Named constructor BankAccount.newAccount(this.accountHolder) that sets balance to 0.0
- Methods:
  - deposit(double amount): Adds amount to balance and prints the updated balance
  - withdraw(double amount): Subtracts amount from balance and prints the updated balance (consider error-checking if balance is insufficient)

 */



class BankAccount {

  // Blueprints of properties BankAccount class
  String accountHolder ;
  double balance ;

  // Constructor to takes the values from main() using "this" keyword
  BankAccount(this.accountHolder, this.balance);

/*
Name Constructor to assign value [from main() syntax "variabe = Name_Constructor(1st_property_value, 2st_property_value);"] to property using "this" keyword syntax to declare Name_Constructor "Name_Constructor(this.1st_property, this.2nd_property)"  And to pass assigned value from Name_Constructor  syntax "Name_Constructor(this.1st_property, this.2nd_property) : 1st_property = Value, 2nd_property = Value ; " to main() syntax "Type_ Variable_ = BankAccount.newAccount('Ratndeep Chandankhede',(access 2nd place here));"
*/
  BankAccount.newAccount(this.accountHolder) :

  // assign value to access directly from main()
        balance = 0.00 ;

  // Method to call in main()
  void deposit(double amount){  // double "amount" because we pass and access in main()

    balance = balance + amount ; // updated bal = previous amount + depo. ammount
    print('Deposite amount : $amount');
    print('Updated Balance : $balance');
  }

  // Method to call in main()
  void withdrawl(double amount){

    balance = balance - amount ; // updated bal = previous amount - withdr. ammount
    print('Withdrawl amount : $amount');
    print('Updated balance : $balance');
  }

}


// Now, main() function
void main(){

  /*
  create object[myBalan] and pass or access values from class > Constructor / Name_Constructor [follow  syncroness line by line]
  */
  var myBalan = BankAccount.newAccount('Ratndeep Chandankhede');

  /*
  to print class properties_values in print main() so assign to variable the syntax   "${variable_name.property}"
  */
  print('Account Holder Name : ${myBalan.accountHolder} \nMain Balance : ${myBalan.balance}');
  print('\n'); // for next line


  if (myBalan.balance == 0.00){

    // this will print when accessing value from Name_Constructor
    print('error-checking "Your Balance is insufficient"');
  }
  else {

    // this will print when Assign value from main() to Constructor (this.balance)
    // function calling with passing arguments to deposite()
    myBalan.deposit(100.50); // 100.50 directly pass to deposite() and assign to "amount"

    myBalan.withdrawl(300.50); // 300.50 directly assign to "amount" in withdrawl() function
  }

}

/*
Outputput will be this if we pass balance 500 from main() syntax "var myBalan = BankAccount('Ratndeep Chandankhede', 500);" to Constructor syntax "BankAccount(this.balance);"

Account Holder Name : Ratndeep Chandankhede
Main Balance : 500

Deposite amount : 100.5
Updated Balance : 600.5
Withdrawl amount : 300.5
Updated balance : 300
*/


/*
Outputput will be this if we did'nt pass balance from main() to constructor, just takes balance value 0.0 [As given in Name_Constructor] from Name Constructor syntax "BankAccount.newAccount(this.accountHolder : balance = 0.0 ; )" And pass to variabe in main() syntax "var myBalan = BankAccount.newAccount('Ratndeep Chandankhede');"



Account Holder Name : Ratndeep Chandankhede
Main Balance : 0

error-checking "Your Balance is insufficient"

*/
