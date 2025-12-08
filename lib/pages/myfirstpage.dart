

import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: const Color.fromARGB(255, 247, 175, 175),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 100,
            backgroundImage: AssetImage("assets/04-11-1024x683.jpg"),
            ),
            Icon(Icons.person),
            Text("Patcharapon",style: TextStyle(fontSize: 22, color: Colors.white),),
            Text("Boonpong",style: TextStyle(fontSize: 25, color: Colors.greenAccent),),
            Text("6820230004",style: TextStyle(fontSize: 22, color: Colors.white),),
            Text("6820230004@tsu.ac.th",style: TextStyle(fontSize: 25, color: Colors.greenAccent),),
          ],
        ),
      ),
      
    );
  }
}