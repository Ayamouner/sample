import 'package:flutter/material.dart';

import 'Login.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: First());
    //body: Center(child: Text('welcome')),
    /* appBar: AppBar(
          title: Text(
            'FirstApp',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),
          ),
          centerTitle: true,
          leading: Icon(Icons.home),
          backgroundColor: Colors.green,
        ),
      ), */
  }
}
