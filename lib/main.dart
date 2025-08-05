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

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        body: Column(
          children: [
            Expanded(
              flex: 10,
              child: TabBarView(
                children: [
                  Info(),
                  EducationPage(),
                  HobbyPage(),
                  ContactPage(),
                  SkillPage(),
                ],
              ),
            ),
            Container(
              color: Colors.amber,
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),

                child: TabBar(
                  indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: const Color.fromARGB(163, 139, 201, 248),
                    // สีพื้นหลังตอนเลือก
                    borderRadius: BorderRadius.circular(15), // รูปทรง
                  ),
                  indicatorPadding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 15,
                  ),
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Tab(icon: Icon(Icons.person, size: 30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Tab(icon: Icon(Icons.school, size: 30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Tab(icon: Icon(Icons.palette, size: 30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Tab(icon: Icon(Icons.contact_mail, size: 30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Tab(icon: Icon(Icons.star, size: 30)),
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
