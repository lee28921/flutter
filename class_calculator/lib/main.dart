import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Container _buttonNumber(Color color, String text) {
    return Container(
      color: color,
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 30)),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget buttonSection = Row(
      children: [
        _buttonNumber(Colors.cyan, "1"),
        _buttonNumber(Colors.cyan, "2"),
        _buttonNumber(Colors.cyan, "3"),
        _buttonNumber(Colors.red, "CA"),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('응애',
              style: TextStyle(
                color: Colors.white,
              )),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            buttonSection,
          ],
        ),
      ),
    );
  }
}
