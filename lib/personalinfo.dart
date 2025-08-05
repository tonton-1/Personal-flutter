import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    int myAge = now.year - 2005;

    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 250,
                color: const Color.fromARGB(255, 255, 254, 254),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage(
                          'assets/images/download.jpg',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 180,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Wattanachai',
                                style: GoogleFonts.prompt(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 58, 58, 58),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Pummala',
                                style: GoogleFonts.prompt(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromARGB(
                                    255,
                                    131,
                                    130,
                                    130,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 250,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 100,
                      child: Column(
                        spacing: 5,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'วันเกิด',
                              style: GoogleFonts.prompt(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 58, 58, 58),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              '24',
                              style: GoogleFonts.prompt(
                                fontSize: 37,

                                color: const Color.fromARGB(255, 139, 136, 136),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'กุมภาพันธ์ ',
                              style: GoogleFonts.prompt(
                                fontSize: 22,

                                color: const Color.fromARGB(255, 139, 136, 136),
                              ),
                            ),
                          ),

                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              '2548',
                              style: GoogleFonts.prompt(
                                fontSize: 25,

                                color: const Color.fromARGB(255, 139, 136, 136),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'อายุ $myAge ปี',
                              style: GoogleFonts.prompt(
                                fontSize: 19,

                                color: const Color.fromARGB(255, 139, 136, 136),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),

          width: 350,
          height: 270,
          margin: EdgeInsets.only(top: 20),
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                child: Text(
                  "ชื่อภาษาไทย",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(66, 30, 101, 233),
                    borderRadius: BorderRadius.circular(12), // มุมโค้ง
                  ),
                  child: Icon(
                    Icons.assignment_ind,
                    color: const Color.fromARGB(255, 30, 101, 233),
                    size: 30,
                  ),
                ),
                title: Text(
                  'วัฒนชัย พุ่มมาลา',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                child: Text(
                  "เมนูที่ชอบ",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 245, 204),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Icon(Icons.restaurant, color: Colors.orange, size: 30),
                ),

                title: Text(
                  'ผัดกะเพราหมูกรอบ',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
