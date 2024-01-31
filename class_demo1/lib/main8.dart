void main() {
  calculateInterest(5000, 10, 1);
  print(calculateCircleArea(5.0));
  print(calculateRectangleArea(3.0, 4.0));
}

// 간단한 이자를 계산하는 함수 만들어 보기
// interest - 이자
// 원금, 이자율, 기간
// 이자 = 원금 * 이자율 * 시간

void calculateInterest(double principal, double rate, double year) {

  double interest = (principal * rate * year) / 100; //
  print("간단한 이자 계산 금액 ${interest} 입니다");
}

double calculateCircleArea(double c1) {
  // 원에 면적 : 원주율 * 반지름 * 반지름

  return 3.14 * c1 * c1;
}

double calculateRectangleArea(double r1, double r2) {

  return r1 * r2;
}