// 상속 구조 생성 --> 부모 클래스 단일 생성자 생성, --> 자식 틀래스 --> 이니셜 라이져 생성
class Burger {
  String? name;
  Burger(this.name);
}

// super 키워드 확인
class CheeseBurger extends Burger {
  CheeseBurger(String name) : super(name);
}

void main() {
  CheeseBurger cheeseBurger = CheeseBurger("치즈버그");
  print(cheeseBurger.name);
}
