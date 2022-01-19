import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => {runApp(Superpad())};

class Superpad extends StatelessWidget {
  const Superpad({Key? key}) : super(key: key);
  SizedBox buildKey(
      {required Color color, //input สีของปุ่ม
      required int soundNumber, //input เสียงของปุ่ม
      required String soundIcon}) { //input ไอคอนของปุ่ม
    //ขนาดของปุ่ม
    return SizedBox(
      height: 166,
      width: 166,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: (color),
        ),
        //กดปุ่มเพื่อเล่นเสียงที่เรารับเข้ามา
        onPressed: () {
          final player = AudioCache();
          player.play('sound$soundNumber.mp3');
        },
        //Text ที่อยู่ในปุ่มเสียง
        child: Center(
          child: Image.asset("images/$soundIcon",height: 50,),
        ),
      ),
    );
  }

  //loopปุ่มเสียง
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('SUPERPAD'),
          backgroundColor: Colors.grey[850], //สีพื้นหลังเเอป
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey.shade900,
            child: Padding(
              padding: const EdgeInsets.all(10), //padding ข้างใน body
              child: Column(
                
                children: [
                  //loop ปุ่มโดยมีค่าที่ใส่เป็นสี เสียง ไอคอน
                  Row(
                    children: [
                      Expanded(
                          child: buildKey(
                              color: Colors.pink.shade50,
                              soundNumber: 1,
                              soundIcon: "1.png")),
                      SizedBox(width: 10),
                      Expanded(
                          child: buildKey(
                              color: Colors.pink,
                              soundNumber: 2,
                              soundIcon: "2.png")),
                      SizedBox(width: 10),
                      Expanded(
                          child: buildKey(
                              color: Colors.pink,
                              soundNumber: 3,
                              soundIcon: "3.png")),
                     
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: buildKey(
                              color: Colors.pink,
                              soundNumber: 4,
                              soundIcon: "4.png")),
                      SizedBox(width: 10),
                      Expanded(
                          child: buildKey(
                              color: Colors.yellow,
                              soundNumber: 5,
                              soundIcon: "5.png")),
                      SizedBox(width: 10),
                      Expanded(
                          child: buildKey(
                              color: Colors.yellow,
                              soundNumber: 6,
                              soundIcon: "6.png")),
                      
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: buildKey(
                              color: Colors.yellow,
                              soundNumber: 7,
                              soundIcon: "7.png")),
                      SizedBox(width: 10),
                      Expanded(
                          child: buildKey(
                              color: Colors.green,
                              soundNumber: 8,
                              soundIcon: "8.png")),
                      SizedBox(width: 10),
                      Expanded(
                          child: buildKey(
                              color: Colors.green,
                              soundNumber: 9,
                              soundIcon: "9.png")),
                      
                    ],
                  ),
                  
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: buildKey(
                              color: Colors.blue,
                              soundNumber: 10,
                              soundIcon: "10.png")),
                      SizedBox(width: 10),
                      Expanded(
                          child: buildKey(
                              color: Colors.pink.shade50,
                              soundNumber: 11,
                              soundIcon: "11.png")),
                      SizedBox(width: 10),
                      Expanded(
                          child: buildKey(
                              color: Colors.blue,
                              soundNumber: 12,
                              soundIcon: "12.png")),
                      
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
