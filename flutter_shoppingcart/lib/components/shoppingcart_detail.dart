import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailNamePrice(),
            _buildDetailRatingAndReviewCount(),
            _buildDetailColorOptions(),
            _buildDetailButton(context)
          ],
        ),
      ),
    );
  }

  // 제목 및 가로 영역 넓히기
  Widget _buildDetailNamePrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Urban Soft AL 10.0",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            "\$699",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  // 별점 및 리뷰
  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Spacer(),
          Text("review "),
          Text("(26)", style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }

  // 색상 버튼 고르기
  Widget _buildDetailColorOptions() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Color Options"),
          SizedBox(height: 10),
          Row(
            children: [
              _buildDetailIcon(Colors.black),
              _buildDetailIcon(Colors.green),
              _buildDetailIcon(Colors.orange),
              _buildDetailIcon(Colors.grey),
              _buildDetailIcon(Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  // 색상 버튼
  Widget _buildDetailIcon(Color mColor) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              child: Container(
                color: mColor,
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailButton(BuildContext context) {
    return Align(
      child: TextButton(
        onPressed: () {
          showCupertinoDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog(
              title: Text("장바구니에 담으시겠습니까?"),
              actions: [
                CupertinoDialogAction(
                  child: Text("확인"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          minimumSize: Size(300, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          "Add to Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
