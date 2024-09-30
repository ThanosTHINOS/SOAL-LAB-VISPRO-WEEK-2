import 'dart:io';

// Base class Vehicle
class Vehicle {
  String name;
  double speed;

  Vehicle(this.name, this.speed);

  // Method to describe how the vehicle moves
  void move() {
    print('The vehicle moves.');
  }
}

// Subclass Car that extends Vehicle
class Car extends Vehicle {
  Car(String name, double speed) : super(name, speed);

  // Overriding the move method for Car
  @override
  void move() {
    print('$name moves fast on roads at $speed km/h.');
  }
}

// Subclass Bike that extends Vehicle
class Bike extends Vehicle {
  Bike(String name, double speed) : super(name, speed);

  // Overriding the move method for Bike
  @override
  void move() {
    print('$name moves swiftly through traffic at $speed km/h.');
  }
}

void main() {
  // Get user input for the type of vehicle
  print('Do you want to create a Car or Bike?');
  String? vehicleType = stdin.readLineSync()?.toLowerCase();

  // Get user input for vehicle name and speed
  print('Enter the name of the vehicle:');
  String? name = stdin.readLineSync();
  
  print('Enter the speed of the vehicle (in km/h):');
  double speed = double.parse(stdin.readLineSync()!);

  Vehicle vehicle;

  // Create an instance based on user input
  if (vehicleType == 'car') {
    vehicle = Car(name!, speed);
  } else if (vehicleType == 'bike') {
    vehicle = Bike(name!, speed);
  } else {
    print('Invalid vehicle type. Please choose "Car" or "Bike".');
    return; // Exit if invalid type
  }

  // Call the move method for the created vehicle
  vehicle.move();
}
