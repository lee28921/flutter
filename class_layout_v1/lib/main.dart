import 'package:flutter/material.dart';

// 코드의 시작점
void main() {
  // 루트 위젯을 만들어 주는 함수
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Column _buttonSectionColumn(IconData iconData, Color color, String label) {
    return Column(
      children: [
        Icon(iconData, color: color),
        Container(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const titleText = "layout 1";
    const buttonColor = Colors.blue;

    Widget buttonSection = Row(
      children: [
        _buttonSectionColumn(Icons.star, buttonColor, 'text'),
        _buttonSectionColumn(Icons.star, buttonColor, 'text'),
        _buttonSectionColumn(Icons.star, buttonColor, 'text'),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titleText,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(titleText),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: Text('야호'),
      ),
    );
  }
}
