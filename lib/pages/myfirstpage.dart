

import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: const Color.fromARGB(255, 247, 175, 175),
      ),
      body: Column(
        children: [
          Text("Patcharapon",style: TextStyle(fontSize: 22, color: Colors.white),),
          Text("Boonpong",style: TextStyle(fontSize: 25, color: Colors.greenAccent),),
        ],
      ),
      
    );
  }
}