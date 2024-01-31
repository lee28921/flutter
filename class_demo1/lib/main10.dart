void main() {
  int num1 = 500;
  int num2 = 10;

  print("-- 기존 함수 정의");
  print("n1 + n2 = ${add1(num1,num2)}");
  print("n1 - n2 = ${sub1(num1,num2)}");
  print("n1 * n2 = ${mul1(num1,num2)}");
  print("n1 + n2 = ${div1(num1,num2)}");

  print("-- 화살표 함수 정의");
  print("n1 + n2 = ${add2(num1,num2)}");
  print("n1 - n2 = ${sub2(num1,num2)}");
  print("n1 * n2 = ${mul2(num1,num2)}");
  print("n1 + n2 = ${div2(num1,num2)}");
}

/// 1. 기존 함수 정의
int add1(int n1, int n2) {
  return n1 + n2;
}

int sub1(int n1, int n2) {
  return n1 - n2;
}

int mul1(int n1, int n2) {
  return n1 * n2;
}

double div1(int n1, int n2) {
  return n1 / n2;
}


/// 2. 화살표 함수로 변경해보기
int add2(int n1, int n2) => n1 + n2;
int sub2(int n1, int n2) => n1 - n2;
int mul2(int n1, int n2) => n1 * n2;
double div2(int n1, int n2) => n1 / n2;
