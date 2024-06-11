import 'package:flutter/material.dart';

class SecondYearPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2 Year'),
      ),
      body: Center(
        child: Text(
          'Details for 2 Year',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
