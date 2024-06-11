import 'package:flutter/material.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';
import 'fourth.dart';

void main() {
  runApp(MaterialApp(
    home: AdityaPage(universityName: 'Aditya University'),
  ));
}

class AdityaPage extends StatefulWidget {
  final String universityName;

  const AdityaPage({required this.universityName});

  @override
  State<AdityaPage> createState() => _AdityaPageState();
}

class _AdityaPageState extends State<AdityaPage> {
  final List<String> items = [
    '1 Year',
    '2 Year',
    '3 Year',
    '4 Year',
  ];

  void _navigateToDetails(BuildContext context, String item) {
    Widget page;
    switch (item) {
      case '1 Year':
        page = FirstYearPage();
        break;
      case '2 Year':
        page = SecondYearPage();
        break;
      case '3 Year':
        page = ThirdYearPage();
        break;
      case '4 Year':
        page = FourthYearPage();
        break;
      default:
        page = FirstYearPage();
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
        title: Text(widget.universityName),
      ),
      body: Column(
        children: [
          Text(
            widget.universityName,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                  onTap: () => _navigateToDetails(context, items[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
