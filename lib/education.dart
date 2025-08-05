import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      //สถานที่ศึกษา
      alignment: Alignment.topCenter,

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),

        width: 350,
        height: 450,
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: Text(
                "สถานที่ศึกษา",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.account_balance,
                  color: Colors.green,
                  size: 28,
                ),
              ),
              title: Text('มหาวิทยาลัยเกษตรศาสตร์วิทยาเขตกำแพงแสน'),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.menu_book, color: Colors.blue, size: 28),
              ),
              title: Text('คณะศิลปศาสตร์และวิทยาศาสตร์'),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.computer, color: Colors.blueGrey, size: 28),
              ),
              title: Text('สาขาเทคโนโลยีสารสนเทศ'),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.calendar_today,
                  color: Colors.orange,
                  size: 28,
                ),
              ),
              title: Text('ปีการศึกษา'),
              subtitle: Text('2568 - ปัจจุบัน ปี 3'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
