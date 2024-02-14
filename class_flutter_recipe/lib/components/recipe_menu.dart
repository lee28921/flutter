import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  // build 화면에다가 그림을 그려주는 함수
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank_outlined, "ALL"),
          const SizedBox(width: 25),
          _buildMenuItem(Icons.coffee, "Coffee"),
          const SizedBox(width: 25),
          _buildMenuItem(Icons.fastfood_outlined, "Burger"),
          const SizedBox(width: 25),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData food, String text) {
    return Container(
        width: 60,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              food,
              color: Colors.redAccent,
              size: 30,
            ),
            SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(color: Colors.black87),
            )
          ],
        ));
  }
}
