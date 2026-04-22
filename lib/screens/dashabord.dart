import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'profile_screen.dart';

class Dashabord extends StatefulWidget {
  const Dashabord({super.key});

  @override
  State<Dashabord> createState() => _DashabordState();
}

class _DashabordState extends State<Dashabord> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Floating Action Button Pressed");
        },
        backgroundColor: Colors.grey.shade300,
        child: Icon(Icons.add, color: Colors.grey.shade900),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        centerTitle: true,
        title: Text("Profile ID", style: TextStyle(color: Colors.white)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade800,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [HomeScreen(), ProfileScreen()],
      ),
    );
  }
}
