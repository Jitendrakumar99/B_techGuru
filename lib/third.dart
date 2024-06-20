import 'package:flutter/material.dart';
import 'sem/fifth_sem_page.dart';
import 'sem/sixth_sem_page.dart';

class ThirdYearPage extends StatelessWidget {
  final List<String> semesters = ['3.1 Sem', '3.2 Sem'];

  void _navigateToSemDetails(BuildContext context, String semester) {
    Widget page;
    switch (semester) {
      case '3.1 Sem':
        page = FifthSemPage();
        break;
      case '3.2 Sem':
        page = SixthhSemPage();
        break;
      default:
        page = FifthSemPage();
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
