// First Question num : 1

// void main(List<String> args) {
//   int num = 5;
//   for (int i = 1; i <= 10; i++) {
//     int mul = i * num;
//     print("$i x $num = $mul");
//   }
// }

// Secand Question num : 2

// import 'dart:io';

// void main(List<String> args) {
//   print('Enter your dob (in the format yyyy-mm-dd):');
//   String input = stdin.readLineSync()!;
//   DateTime date = DateTime.parse(input);
//   String year1 = input.substring(0, 4);
//   int intconyear = int.parse(year1);

//   int now = DateTime.now().year;

//   int age = now - intconyear;
//   print("your age is $age and your DOB : $date");
// }

// Secand Question num : 3

// void main(List<String> args) {
//   int ginum = 6;
//   int factorial = 1;

//   for (var i = 1; i <= ginum; i++) {
//     factorial *= i;
//   }
//   print("factroial of $ginum is $factorial .");
// }

// Secand Question num : 4

class Animal {
  void eat() {
    print("Animal is Eating");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog is barking");
  }
}

class Cat extends Animal {
  void meow() {
    print("Cat is meowing");
  }
}

void main(List<String> args) {
  Animal animal = Animal();
  animal.eat();
  Dog dog = Dog();
  dog.eat();
  dog.bark();
  Cat cat = Cat();
  cat.eat();
  cat.meow();
}
