import 'dart:io';

// Base class Animal
class Animal {
  String soundInput;
  String eatInput;

  // Constructor to initialize sound and eat descriptions
  Animal(this.soundInput, this.eatInput);

  // Method to make sound (user input sound)
  void sound() {
    print('Animal sound: $soundInput');
  }

  // Method to eat (user input eating habit)
  void eat() {
    print('Animal eats: $eatInput');
  }
}

// Dog class that extends Animal
class Dog extends Animal {
  Dog(String soundInput, String eatInput) : super(soundInput, eatInput);

  // Overriding the sound method for Dog
  @override
  void sound() {
    print('Dog barks: $soundInput');
  }

  // Overriding the eat method for Dog
  @override
  void eat() {
    print('Dog eats: $eatInput');
  }
}

// Cat class that extends Animal
class Cat extends Animal {
  Cat(String soundInput, String eatInput) : super(soundInput, eatInput);

  // Overriding the sound method for Cat
  @override
  void sound() {
    print('Cat meows: $soundInput');
  }

  // Overriding the eat method for Cat
  @override
  void eat() {
    print('Cat eats: $eatInput');
  }
}

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
