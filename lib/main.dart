import 'package:flutter/material.dart';
import 'screens/dashabord.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Training",
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Dashabord(),
    );
  }
}
