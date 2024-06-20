import 'package:flutter/material.dart';
import 'package:helloworld/subject1st/11phy.dart';
import 'package:helloworld/subject1st/11che.dart';
import 'package:helloworld/subject1st/11eng.dart';
import 'package:helloworld/subject1st/11c.dart';
import 'package:helloworld/subject1st/11m1.dart';

class EightSemPage extends StatelessWidget {
  final List<String> semesters = ['Physics', 'Chemestry', 'English', 'M1', 'C'];

  void _navigateToSemDetails(BuildContext context, String semester) {
    Widget page;
    switch (semester) {
      case 'Physics':
        page = Physics();
        break;
      case 'Chemestry':
        page = Chemestry();
        break;
      case 'English':
        page = English();
        break;
      case 'M1':
        page = M1();
        break;
      case 'C':
        page = C();
        break;
      default:
        page = Physics();
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1 Year'),
      ),
      body: Column(
        children: [
          Text(
            '1 Year',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: semesters.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(semesters[index]),
                  onTap: () => _navigateToSemDetails(context, semesters[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
