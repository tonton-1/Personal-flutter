import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      //ข้อมูลติดต่อ
      alignment: Alignment.topCenter,
      child: Container(
        width: 350,
        height: 350,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          children: [
            ListTile(
              title: Text(
                'ข้อมูลติดต่อ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                child: Icon(Icons.phone, size: 30, color: Colors.green),
              ),
              title: Text('0616549253'),
            ),
            ListTile(
              title: Text('wattanachaipum@gmail.com'),
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                child: Icon(Icons.email),
              ),
            ),
            ListTile(
              title: Text('tonton-1'),
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                child: SvgPicture.network(
                  'https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/github/github-original.svg',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
