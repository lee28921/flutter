class Dog {
  void sound() {
    print("멍멍");
  }
}

class Cat {
  void sound() {
    print("야옹");
  }
}

class Fish {
  void hungry() {}
}

void main() {
  Dog d1 = Dog();
  Cat c1 = Cat();
  Fish f1 = Fish();

  d1.sound();
  c1.sound();
}
