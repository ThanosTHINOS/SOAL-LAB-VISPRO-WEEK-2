import 'dart:io';
import '7.dart';

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