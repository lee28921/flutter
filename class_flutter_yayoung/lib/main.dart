import 'package:class_flutter_yayoung/components/yayoung_carousel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: yaYoungPage(),
    );
  }
}

class yaYoungPage extends StatelessWidget {
  const yaYoungPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildYaYoungAppBar(),
      body: YaYoungCarousel(),
    );
  }
}

AppBar _buildYaYoungAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'YAYoung',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        Text('#캠핑을 위한 모든 것, 야영에서 함께',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
            )),
      ],
    ),
    actions: [
      IconButton(onPressed: null, icon: Icon(Icons.search)),
    ],
  );
}
