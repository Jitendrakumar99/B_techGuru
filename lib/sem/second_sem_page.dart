import 'package:flutter/material.dart';

class SecondSemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1.2 Sem'),
      ),
      body: Center(
        child: Text(
          'Details for 1.2 Semester',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
