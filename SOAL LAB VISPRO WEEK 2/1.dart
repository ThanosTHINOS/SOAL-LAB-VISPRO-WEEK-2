class Student {
  String name;
  int studentID;
  double grade;

  // Constructor
  Student(this.name, this.studentID, this.grade);

  // Method to display student information
  void displayInfo() {
    print('Name: $name');
    print('Student ID: $studentID');
    print('Grade: $grade');
  }

  // Method to check if the student passes
  bool isPassing() {
    return grade >= 70;
  }
}