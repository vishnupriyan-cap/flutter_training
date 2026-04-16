import 'package:flutter/material.dart';

// Everything is a Widget
void main() {
  runApp(const MyApp());
}

//Stateless
//Statefull

//runapp -> MyApp -> MaterialApp -> MyHomePage

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello World!"),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text("Count: $i")),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Pressed");
          setState(() {
            i += 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
