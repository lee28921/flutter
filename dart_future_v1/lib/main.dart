import 'package:flutter/material.dart';

void main() async {
  // 비동기 프로그래밍
  // 키워드 묶음 -async, await : Future (1회성 응답을 돌려 받는 경우)

  print("task...1");
  // 비동기 함수 만들기
  var data1 = await fetchData();
  print("task...$data1");
  print("task...3");
}

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "연산 완료 처리 ....";
  });
}
