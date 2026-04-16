// Dart Basics - Future Async Dart, Similar to JavaScript Promises
void main() async {
  print('Start');

  // Simple async function
  await fetchData();
  print('End');
}

Future<bool> fetchData() async {
  print('Fetching data...');
  await Future.delayed(Duration(seconds: 2)); // Simulate delay, HTTP CALL
  print('Data fetched!');
  return true;
}
