// Dart Basics - Future Async Dart
void main() async {
  print('Start');

  // Simple async function
  await fetchData();
  print('End');
}

Future<void> fetchData() async {
  print('Fetching data...');
  await Future.delayed(Duration(seconds: 2)); // Simulate delay
  print('Data fetched!');
}
