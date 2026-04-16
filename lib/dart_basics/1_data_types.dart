//Dart Basics - Data Types
void main() {
  //var -> type inference
  var age = 25; // int
  print('Age: $age');

  //const -> compile time constant
  const pi = 3.14;
  print('Pi: $pi');

  //final -> runtime constant
  final now = DateTime.now();
  print('Now: $now');

  //String
  String name = 'Dart';
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
