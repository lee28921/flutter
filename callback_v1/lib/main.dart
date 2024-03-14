import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 메인 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ParentsView(),
    );
  }
}

// 부모 위젯
class ParentsView extends StatefulWidget {
  const ParentsView({super.key});

  @override
  State<ParentsView> createState() => _ParentsViewState();
}

class _ParentsViewState extends State<ParentsView> {
  String childMsgContent = "여긴 부모 위젯 영역이야";

  // 자식 위젯 한테 전달할 함수를 설계한다.
  void onCallbackPressed(String msg) {
    print("자식한테 이벤트가 일어났음");

    setState(() {
      childMsgContent = msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(childMsgContent),
              ),
            ),
            Expanded(
              flex: 1,
              child: ChildA(),
            ),
            Expanded(
                flex: 1,
                child: ChildB(
                  onCallback: onCallbackPressed,
                )),
          ],
        ),
      ),
    );
  }
}

// 자식1
class ChildA extends StatelessWidget {
  //final VoidCallback callback;

  const ChildA({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        //onTap: callback,
        child: Container(
          color: Colors.orange,
        ),
      ),
    );
  }
}

// 자식2
class ChildB extends StatelessWidget {
  // 함수 타입
  // final VoidCallback callback;

  final Function(String msg) onCallback;

  // 생성자
  const ChildB({required this.onCallback, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          onCallback("자식 B가 연산해서 데이터 전달");
        },
        child: Container(
          width: double.infinity,
          color: Colors.red,
          child: Text("CHILD B"),
        ),
      ),
    );
  }
}
