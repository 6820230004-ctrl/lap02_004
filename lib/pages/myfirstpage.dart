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
      
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, 
            children: [
              
              SizedBox(height: 30), 
        
              // --- ส่วนที่ 1: โปรไฟล์ ---
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/04-11-1024x683.jpg"),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.person, color: Colors.white),
                      Text("Patcharapon", style: TextStyle(fontSize: 22, color: Colors.white)),
                      Text("Boonpong", style: TextStyle(fontSize: 25, color: Colors.greenAccent)),
                      Text("6820230004", style: TextStyle(fontSize: 22, color: Colors.white)),
                      Text("6820230004@tsu.ac.th", style: TextStyle(fontSize: 25, color: Colors.greenAccent)),
                    ],
                  )
                ],
              ),
        
              SizedBox(height: 20), 
        
              // --- ส่วนที่ 2: การ์ดที่อยู่ ---
              SizedBox(
                width: 500,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.pin_drop, color: Colors.red),
                            SizedBox(width: 16),
                            Text("ที่อยู่", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("บ้านพร้าว พัทลุง", style: TextStyle(fontSize: 18)),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Thailand 93110", style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20), // เว้นระยะห่างระหว่างการ์ดกับปุ่ม

              // --- ส่วนที่ 3: ปุ่มกด ---
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // จัดปุ่มให้อยู่กึ่งกลาง
                children: [
                  ElevatedButton(
                    onPressed: (){
                      print("ไม่มี");
                    },
                    child: Text("มี"),
                  ),
                  
                  SizedBox(width: 20), // เว้นระยะห่างระหว่างปุ่มซ้ายขวา

                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Text("วัน"),
                    icon: Icon(Icons.cake), // ** แก้ไข: ใส่ comma (,) ตรงนี้ **
                  )
                ],
              ),
              
              SizedBox(height: 30), // พื้นที่ว่างด้านล่างสุด
            ],
          ),
        ),
      ),
    );
  }
}