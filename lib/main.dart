import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training/cubit/news_cubit.dart';
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
      home: BlocProvider(
        create: (context) => NewsCubit()..getTopNewsHealines(),
        child: Dashabord(),
      ),
    );
  }
}
