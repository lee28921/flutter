import 'package:class_flutter_recipe/pages/recipe_page.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp -- 위젯 트리에 루트 위젯으로 설정 한다
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "PatuaOne"),
      home: RecipePage(),
    );
  }
}
