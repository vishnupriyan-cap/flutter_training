//Dart Basics - Functions
void main() {
  //Functions are reusable blocks of code that perform a specific task. They can take parameters and return values.
  greet(name: 'Dart', age: 33);
}

//Greeting function that takes a name as a parameter and returns a greeting message
String greet({required String name, int? age = 30}) {
  print('Hello, $name');
  return 'Hello, $name'; // This return value is not used in this example
}
