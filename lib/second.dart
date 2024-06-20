import 'package:flutter/material.dart';
import 'sem/third_sem_page.dart';
import 'sem/fourth_sem_page.dart';

class SecondYearPage extends StatelessWidget {
  final List<String> semesters = ['2.1 Sem', '2.2 Sem'];

  void _navigateToSemDetails(BuildContext context, String semester) {
    Widget page;
    switch (semester) {
      case '2.1 Sem':
        page = ThirdSemPage();
        break;
      case '2.2 Sem':
        page = FourthSemPage();
        break;
      default:
        page = ThirdSemPage();
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
