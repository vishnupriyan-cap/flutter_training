//Dart Basics - Type Annotations
void main() {
  // Explicit type annotations
  int? number = 42;
  // number = null; // Error: non-nullable variable cannot be null
  String text = 'Hello';
  bool flag = true;
  double decimal = 3.14;

  print('Number: ${number + 5}, Text: $text, Flag: $flag, Decimal: $decimal');

  // Nullable types (null safety)
  int? nullableNumber = null;
  String? nullableText = 'Can be null';
  nullableText = null;
  print('Nullable number: $nullableNumber, Nullable text: $nullableText');

  // Assignment operators
  int x = 5;
  x += 3; // x = x + 3
  x *= 2; // x = x * 2
  print('Assignment result: $x');

  // Late initialization
  late String lateValue;
  // lateValue is not initialized yet
  lateValue = 'Initialized now';
  print('Late value: $lateValue');
}
