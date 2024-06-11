import 'package:flutter/material.dart';

class ThirdYearPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3 Year'),
      ),
      body: Center(
        child: Text(
          'Details for 3 Year',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
