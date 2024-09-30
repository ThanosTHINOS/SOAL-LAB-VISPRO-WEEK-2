import 'dart:io';
import '4.dart';

void main() {
  Library library = Library();
  
  while (true) {
    // Display menu
    print('\nLibrary Menu:');
    print('1. Add a book');
    print('2. Remove a book');
    print('3. Display all books');
    print('4. Exit');
    
    // Get user choice
    print('Enter your choice:');
    String? choice = stdin.readLineSync();
    
    switch (choice) {
      case '1':
        // Add a book
        print('Enter the title of the book:');
        String? title = stdin.readLineSync();
        
        print('Enter the author of the book:');
        String? author = stdin.readLineSync();
        
        print('Enter the year of the book:');
        int year = int.parse(stdin.readLineSync()!);
        
        if (title != null && author != null) {
          Book newBook = Book(title, author, year);
          library.addBook(newBook);
        } else {
          print('Invalid book details.');
        }
        break;

      case '2':
        // Remove a book
        print('Enter the title of the book to remove:');
        String? removeTitle = stdin.readLineSync();
        
        if (removeTitle != null) {
          library.removeBook(removeTitle);
        } else {
          print('Invalid title.');
        }
        break;

      case '3':
        // Display all books
        library.displayBooks();
        break;

      case '4':
        // Exit
        print('Exiting the library system.');
        return;

      default:
        print('Invalid choice, please try again.');
    }
  }
}
