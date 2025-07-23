import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('โปรไฟล์')),
        backgroundColor: Color.fromARGB(226, 239, 247, 255),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 193, 230, 255),
              Color.fromARGB(210, 198, 238, 250),
              Color.fromARGB(255, 211, 250, 234),
              Color.fromARGB(172, 205, 231, 253),
            ],

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Column(
                      // รูป ชื่อ ชื่อเล่น
                      children: [
                        Stack(
                          children: [
                            Align(
                              child: Opacity(
                                opacity: 0.8,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/350/200',
                                    fit: BoxFit.cover,
                                    width: 350,
                                    height: 230,
                                  ),
                                ),
                              ),
                            ),

                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 30),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: CircleAvatar(
                                      radius: 60,
                                      backgroundImage: AssetImage(
                                        'assets/images/download.jpg',
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                  width: 350,
                                  height: 80,
                                  margin: EdgeInsets.only(top: 20),

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 16),
                                        Text(
                                          'วัฒนชัย พุ่มมาลา',
                                          style: GoogleFonts.prompt(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                              255,
                                              58,
                                              58,
                                              58,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'ต้น',
                                          style: GoogleFonts.prompt(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromARGB(
                                              255,
                                              145,
                                              145,
                                              145,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      // ข้อมูลส่วนตัว
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(top: 20),
                            width: 350,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    20.0,
                                    20.0,
                                    10.0,
                                    0.0,
                                  ),
                                  child: Text(
                                    "ข้อมูลส่วนตัว",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                Container(
                                  height: 620,

                                  child: ListView(
                                    padding: EdgeInsets.all(10),

                                    children: [
                                      ListTile(
                                        leading: Icon(
                                          Icons.home,
                                          color: const Color.fromARGB(
                                            255,
                                            105,
                                            168,
                                            240,
                                          ),
                                        ),
                                        title: Text('ที่อยู่'),
                                        subtitle: Text(
                                          '18 หมู่ 1 ตำบลยกกระบัตร อำเภอบ้านแพ้วจังวัดสมุทรสาคร 74120',
                                        ),
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.cake_sharp,
                                          color: const Color.fromARGB(
                                            255,
                                            255,
                                            185,
                                            105,
                                          ),
                                        ),
                                        title: Text('วันเกิด'),
                                        subtitle: Text('24 กุมภาพันธ์ 2548'),
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.temple_buddhist,
                                          color: Colors.amber,
                                        ),
                                        title: Text('ศาสนา'),
                                        subtitle: Text('พุทธ'),
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.calendar_today,
                                          color: Colors.red,
                                        ),
                                        title: Text('อายุ'),
                                        subtitle: Text('20 ปี'),
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.self_improvement,
                                          color: Color.fromARGB(
                                            255,
                                            164,
                                            187,
                                            182,
                                          ),
                                        ),
                                        title: Text('งานอดิเรก'),
                                        subtitle: Text('เล่นเกม, ฟังเพลง'),
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.restaurant),
                                        title: Text('เมนูที่ชอบ'),
                                        subtitle: Text('ผัดกะเพราหมูกรอบ'),
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.fitness_center),
                                        title: Text('กีฬาที่ชอบ'),
                                        subtitle: Text(
                                          'ฟุตบอล, แบดมินตัน, วอลเลย์บอล',
                                        ),
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.straighten),
                                        title: Text('ส่วนสูง นํ้าหนัก'),
                                        subtitle: Text('173 cm, 70 kg'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Align(
                          //สถานที่ศึกษา
                          alignment: Alignment.topCenter,

                          child: Container(
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
                                  padding: const EdgeInsets.fromLTRB(
                                    10.0,
                                    10.0,
                                    10.0,
                                    0.0,
                                  ),
                                  child: Text(
                                    "สถานที่ศึกษา",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                ListTile(
                                  leading: Icon(
                                    Icons.account_balance,
                                    color: Colors.green,
                                  ),
                                  title: Text(
                                    'มหาวิทยาลัยเกษตรศาสตร์วิทยาเขตกำแพงแสน',
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(Icons.menu_book),
                                  title: Text('คณะศิลปศาสตร์และวิทยาศาสตร์'),
                                ),
                                ListTile(
                                  leading: Icon(
                                    Icons.computer,
                                    color: Colors.blueGrey,
                                  ),
                                  title: Text('สาขาเทคโนโลยีสารสนเทศ'),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Align(
                          //ข้อมูลติดต่อ
                          alignment: Alignment.center,
                          child: Container(
                            width: 350,
                            height: 320,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            margin: EdgeInsets.only(top: 20),
                            child: ListView(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              children: [
                                ListTile(
                                  title: Text(
                                    'ข้อมูลติดต่อ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                ListTile(
                                  leading: Image.network(
                                    width: 50,
                                    height: 30,
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/960px-Instagram_icon.png?20200512141346',
                                  ),
                                  title: Text('tonkuay31'),
                                ),
                                ListTile(
                                  leading: Image.network(
                                    width: 50,
                                    height: 30,
                                    'https://i.postimg.cc/pV9JV4tP/Logo-de-Facebook.png',
                                  ),
                                  title: Text('Ton Pummala'),
                                ),

                                ListTile(
                                  leading: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.phone,
                                      size: 30,
                                      color: Colors.green,
                                    ),
                                  ),
                                  title: Text('0616549253'),
                                ),
                                ListTile(
                                  title: Text('wattanachaipum@gmail.com'),
                                  leading: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      10,
                                      8,
                                      8,
                                      8,
                                    ),
                                    child: Icon(Icons.email),
                                  ),
                                  // title: Text(
                                  //   'อีเมล',
                                  //   style: TextStyle(
                                  //     color: const Color.fromARGB(
                                  //       255,
                                  //       99,
                                  //       110,
                                  //       114,
                                  //     ),
                                  //     fontSize: 13,
                                  //   ),
                                  // ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
