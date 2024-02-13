import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  // dart 오버로딩 x
  const RecipeListItem(
      {required this.imageName, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
