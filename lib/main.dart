import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myprofile/hobby.dart';
import 'contact.dart';
import 'education.dart';
import 'personalinfo.dart';
import 'skills.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

//  Info(),
//       EducationPage(),
//       HobbyPage(),
//       SkillPage(),
//       ContactPage(),
class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  List<Widget> pages = [
    Info(),
    EducationPage(),
    HobbyPage(),
    SkillPage(),
    ContactPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('My Profile'), backgroundColor: Colors.white),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(size: 30),
        onTap:
            (value) => setState(() {
              selectedIndex = value;
            }),
        items: [
          BottomNavigationBarItem(
            backgroundColor: const Color.fromARGB(255, 255, 254, 254),
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.palette), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: ''),
        ],
      ),
      body: Center(child: pages[selectedIndex]),
    );
  }
}
