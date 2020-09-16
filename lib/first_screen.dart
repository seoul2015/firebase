import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('$username', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),)
      ),
    );
  }
}
