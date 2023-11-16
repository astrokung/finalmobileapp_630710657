import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  static const routeName = '/about';

  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        toolbarHeight: 100,
        title: Row(
          children: [
            Text(
              'About PSS',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children:[ Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image(image: AssetImage('assets/images/pss.png'),height: MediaQuery.of(context).size.height*0.4,width: MediaQuery.sizeOf(context).width*0.8),
            ),
            Text(
              'เว็บแพลตฟอร์ม ที่สามารถติดตามตารางงานของศิลปิน และสามารถจองโต๊ะหรือตั๋วคอนเสิร์ตได้ พร้อมระบุ วัน เวลา และสถานที่ได้อย่างชัดเจน',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                    child: Center(
                      child: Text(
                        'Easy To book',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // ตัวกำหนดระยะห่างระหว่างกล่อง
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                    child: Center(
                      child: Text(
                        'How to go',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // ตัวกำหนดระยะห่างระหว่างกล่อง
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                    child: Center(
                      child: Text(
                        'FasT News',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // ตัวกำหนดระยะห่างระหว่างกล่อง
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                    child: Center(
                      child: Text(
                        'Notifications',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
        ],
      ),
    );
  }
}