import 'package:flutter/material.dart';
import 'sem/seventh_sem_page.dart';
import 'sem/eight_sem_page.dart';

class FourthYearPage extends StatelessWidget {
  final List<String> semesters = ['4.1 Sem', '4.2 Sem'];

  void _navigateToSemDetails(BuildContext context, String semester) {
    Widget page;
    switch (semester) {
      case '4.1 Sem':
        page = SeventhSemPage();
        break;
      case '4.2 Sem':
        page = EightSemPage();
        break;
      default:
        page = SeventhSemPage();
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
