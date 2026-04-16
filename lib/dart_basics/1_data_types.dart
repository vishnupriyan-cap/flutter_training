//Dart Basics - Data Types
void main() {
  //var -> type inference
  var age = 25; // int
  var name1 = 'Dart'; // String
  name1 = 'Flutter'; // Can change value but not type
  // name = 123; // Error: type mismatch
  print('Age: $age');
  print('Name: $name1');

  //const -> compile time constant
  const pi = 3.14;
  //pi = 3.14159; // Error: cannot change const value
  print('Pi: $pi');

  //final -> runtime constant
  final now = DateTime.now();
  print('Now: $now');

  //String
  final String name = 'Dart';
  // name = 'Flutter'; // Can change value
  print('Name: $name');

  //bool
  bool isActive = true;
  print('Active: $isActive');

  //int
  int count = 10;
  print('Count: $count');

  //double
  double price = 19.99;
  print('Price: $price');

  //dynamic
  dynamic value = 'Hello';
  print('Value: $value');
  value = 42; // Can change type
  print('Value: $value');
}
