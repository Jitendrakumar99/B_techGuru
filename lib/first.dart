import 'package:flutter/material.dart';
import 'sem/first_sem_page.dart';
import 'sem/second_sem_page.dart';

class FirstYearPage extends StatelessWidget {
  final List<String> semesters = ['1.1 Sem', '1.2 Sem'];

  void _navigateToSemDetails(BuildContext context, String semester) {
    Widget page;
    switch (semester) {
      case '1.1 Sem':
        page = FirstSemPage();
        break;
      case '1.2 Sem':
        page = SecondSemPage();
        break;
      default:
        page = FirstSemPage();
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
