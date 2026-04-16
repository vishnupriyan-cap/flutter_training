import 'package:http/http.dart' as http;

void main() async {
  print('Fetching data from API...');

  final response = await http.get(Uri.parse('https://httpbin.org/get'));

  if (response.statusCode == 200) {
    print('Response: ${response.body}');
  } else {
    print('Failed to fetch data: ${response.statusCode}');
  }
}
