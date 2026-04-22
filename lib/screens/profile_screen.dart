import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/avatar.jpg"),
            ),
          ),
          Divider(height: 90, color: Colors.grey),
          Text(
            "NAME",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Monkey D. Luffy",
            style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Global ID",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "#1",
            style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.mail, color: Colors.grey),
              SizedBox(width: 10),
              Text("luffy@onepiece.com", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
