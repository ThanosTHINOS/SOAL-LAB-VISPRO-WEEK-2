import 'dart:io';

void main() {
  // Get the temperature in Celsius from the user
  print('Enter temperature in Celsius:');
  double celsius = double.parse(stdin.readLineSync()!);

  // Display conversion options
  print('Choose the conversion option:');
  print('1. Reaumur');
  print('2. Fahrenheit');
  print('3. Kelvin');

  // Get the user's choice
  String? choice = stdin.readLineSync();

  // Variable to hold the converted temperature
  double convertedTemperature;

  switch (choice) {
    case '1':
      // Convert to Reaumur
      convertedTemperature = celsius * 0.8;
      print('$celsius °C is $convertedTemperature °Re');
      break;

    case '2':
      // Convert to Fahrenheit
      convertedTemperature = (celsius * 9/5) + 32;
      print('$celsius °C is $convertedTemperature °F');
      break;

    case '3':
      // Convert to Kelvin
      convertedTemperature = celsius + 273.15;
      print('$celsius °C is $convertedTemperature K');
      break;

    default:
      print('Invalid choice. Please select 1, 2, or 3.');
  }
}
