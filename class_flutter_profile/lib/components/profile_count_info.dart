import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo("50", "Posts"),
        _buildLine(),
        _buildInfo("10", "Likes"),
        _buildLine(),
        _buildInfo("3", "Share"),
      ],
    );
  }

  // 포스트, 팔로워, 팔로잉
  Widget _buildInfo(String count, String title) {
    return Column(
      children: [
        Text(count, style: TextStyle(fontSize: 15)),
        SizedBox(height: 2),
        Text(count, style: TextStyle(fontSize: 15)),
      ],
    );
  }

  // 세로 라인 구분선
  Widget _buildLine() {
    // 주의 - color와 decoration을 같이 사용하면 오류
    return Container(
      width: 2,
      height: 60,
      color: Colors.blue,
    );
  }
}
