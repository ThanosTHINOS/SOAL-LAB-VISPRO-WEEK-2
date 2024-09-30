class Book {
  String title;
  String author;
  int year;

  // Constructor for the Book class
  Book(this.title, this.author, this.year);

  // Method to display book details
  void displayBook() {
    print('Title: $title, Author: $author, Year: $year');
  }
}

class Library {
  List<Book> books = [];

  // Method to add a book to the library
  void addBook(Book book) {
    books.add(book);
    print('Book added: ${book.title}');
  }

  // Method to remove a book from the library by title
  void removeBook(String title) {
    books.removeWhere((book) => book.title == title);
    print('Book removed: $title');
  }

  // Method to display all books in the library
  void displayBooks() {
    if (books.isEmpty) {
      print('The library is empty.');
    } else {
      print('Books in the library:');
      for (var book in books) {
        book.displayBook();
      }
    }
  }
}

