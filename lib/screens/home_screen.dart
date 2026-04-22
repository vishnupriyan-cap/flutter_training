import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.greenAccent,
                  blurRadius: 5,
                  offset: Offset(5, 5),
                ),
              ],
            ),
            child: Text(
              "Home Screen",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: Text("Tile #1", style: TextStyle(color: Colors.grey)),
          ),
          ListTile(
            title: Text("Tile #1", style: TextStyle(color: Colors.grey)),
          ),
          ListTile(
            title: Text("Tile #1", style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
