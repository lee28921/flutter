import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  // dart 오버로딩 x
  const RecipeListItem(
      {required this.imageName, required this.title, super.key});

  // build 함수가 호출 되면 화면에 그림을 그려준다
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/$imageName.jpeg",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text("Have you ever made your own $title? "
              "Once you've tried a homemade $title, "
              "you'll never go back.")
        ],
      ),
    );
  }
}
