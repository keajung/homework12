import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  // สี่เหลี่ยม มี border
  Widget _buildButton1() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        //color: Colors.yellow, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.red, width: 5.0),
        ),
      ),
    );
  }

  // สี่เหลี่ยมมุมโค้ง มี border
  Widget _buildButton2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        //color: Colors.yellow, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.blue, width: 3.0),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }

  // วงกลม ไม่มี border
  Widget _buildButton3() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        //color: Colors.green, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  // วงกลม มี border มีเงา
  Widget _buildButton4() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        //color: Colors.white, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.purple, width: 4.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // สีเงา
                offset: Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildButton1(), // สังเกตว่าเราแยกโค้ดตรงนี้ออกไปเป็นฟังก์ชัน (เมธอด) ชื่อ _buildButton1()
              _buildButton2(), // สังเกตว่าเราแยกโค้ดตรงนี้ออกไปเป็นฟังก์ชัน (เมธอด) ชื่อ _buildButton2()
              _buildButton3(), // สังเกตว่าเราแยกโค้ดตรงนี้ออกไปเป็นฟังก์ชัน (เมธอด) ชื่อ _buildButton3()
              _buildButton4(), // สังเกตว่าเราแยกโค้ดตรงนี้ออกไปเป็นฟังก์ชัน (เมธอด) ชื่อ _buildButton4()
            ],
          ),
        )
    );
  }
}