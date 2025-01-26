
/*

1. Book Class

- Properties: title, author, yearPublished
- Constructors:
  - Default (with all three properties)
  - Named constructor Book.untitled() that defaults title to "Untitled", author to "Unknown", and yearPublished to 2020
- Methods:
  - read(): Prints "Reading [title] by [author]..."
  - bookAge(): Prints "This book is X years old." based on the current year

 */


class Book {

  String title ;
  String author ;
  int yearPublished ;


  Book(this.title, this.author, this.yearPublished);

  untitled(){
    title = 'Untitled';
    author = 'Unknown';
    yearPublished = 2020 ;
  }

  void read(){
    print('Reading $title by $author ...');
  }

  void bookAge(){
    int currentYear = DateTime.now().year ;
    int yearOld = currentYear - yearPublished ;
    print('This book is $yearOld years old.');
  }

}

// main function
void main(){

  //
  var book1 = Book('"Peace"', 'Ratndeep', 1999 );

  //
  print(book1);

  //
  book1.read();

  //
  book1.bookAge();
}


/*
 Instance of 'Book'
 Reading "Peace" by Ratndeep ...
 This book is 26 years old.
*/
