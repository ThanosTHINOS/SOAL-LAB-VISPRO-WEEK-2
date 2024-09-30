import 'dart:io';
import '5.dart';

void main() {
  // Get user input for animal type
  print('Enter the type of animal (dog/cat):');
  String? animalType = stdin.readLineSync()?.toLowerCase();

  // Get user input for sound
  print('Enter the sound the animal makes:');
  String? soundInput = stdin.readLineSync();

  // Get user input for eating habit
  print('Enter what the animal eats:');
  String? eatInput = stdin.readLineSync();

  // Create animal object based on user input
  if (animalType == 'dog') {
    Dog myDog = Dog(soundInput!, eatInput!);
    print('\nDog behavior:');
    myDog.sound();
    myDog.eat();
  } else if (animalType == 'cat') {
    Cat myCat = Cat(soundInput!, eatInput!);
    print('\nCat behavior:');
    myCat.sound();
    myCat.eat();
  } else {
    print('Unknown animal type.');
  }
}
