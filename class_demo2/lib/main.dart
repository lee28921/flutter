// 코드의 시작점
// 1단계 생성자 학습
void main() {
  //Dog d1 = new Dog(); // 객체 생성(메모리에 로드)

  // 생성자 -- 강제성
  // Dog d1 = Dog('toto', 10, 'black', 100); // new를 빼도 이상 없음

  Dog d1 = Dog(color: 'white', name: 'toto', age: 10, thirsty: 100);
  print(d1.name);
} // end of main

class Dog {
  String name;
  int age;
  String color;
  int thirsty; // 목마름

  // 메서드, 함수, 생성 --> 파라미터 설계 (단일 라인 생성자 -생략했었음)
  // 파라미터 --> 선택적 매개 변수

  // 함수({}); --> 중괄호로 감싸면 된다.
  Dog(
      {required this.name,
      required this.age,
      required this.color,
      required this.thirsty});
}
