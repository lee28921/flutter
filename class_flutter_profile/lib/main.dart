import 'package:class_flutter_profile/components/profile_buttons.dart';
import 'package:class_flutter_profile/components/profile_count_info.dart';
import 'package:class_flutter_profile/components/profile_drawer.dart';
import 'package:class_flutter_profile/components/profile_header.dart';
import 'package:class_flutter_profile/components/profile_tab.dart';
import 'package:class_flutter_profile/theme.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp --> 해당하는 위젯을 루트 위젯으로 만들어준다
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // build 함수는 객체가 메모리에 올라가면 자동으로
  // 한번은 호출이 된다
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildProfileAppBar(),
        endDrawer: ProfileDrawer(),
        body: Column(
          children: [
            const SizedBox(height: 20),
            ProfileHeader(),
            const SizedBox(height: 20),
            ProfileCountInfo(),
            const SizedBox(height: 20),
            ProfileButtons(),
            const SizedBox(height: 20),
            // 남아 있는 세로 공간을 모두 차지하기 위해 확장을 한다
            Expanded(
              flex: 1,
              child: ProfileTab(),
            ),
          ],
        ),
      ),
    );
  }

  // AppBar 제목 및 아이콘
  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text("Profile"),
      centerTitle: true,
    );
  }
}
