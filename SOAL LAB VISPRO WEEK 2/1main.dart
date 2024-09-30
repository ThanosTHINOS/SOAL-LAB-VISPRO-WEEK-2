
import '1.dart';
import 'dart:io';
void main() {
  // Taking user input for name, student ID, and grade
  print('Enter student name:');
  String? name = stdin.readLineSync();  // Reading name

  print('Enter student ID:');
  int studentID = int.parse(stdin.readLineSync()!);  // Reading and parsing student ID

  print('Enter student grade:');
  double grade = double.parse(stdin.readLineSync()!);  // Reading and parsing grade

  // Creating a new student object with input values
  Student student = Student(name ?? 'Unknown', studentID, grade);

  // Display student information
  student.displayInfo();

  // Check if the student passes
  if (student.isPassing()) {
    print('The student has passed.');
  } else {
    print('The student has not passed.');
  }
}
