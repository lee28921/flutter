// dart 에서 기본적으로 제공하는 라이브러리를 import 합니다
import 'dart:math';

void main() {
  List<int> nums = [1, 2, 3, 4, 5]; // 요즘에는 []와 같은 리터럴 타입
  print(nums[0]);
  print(nums[1]);
  print(nums[2]);
  print(nums[4]);
  //print(nums[5]);

  // map 리터럴은 중괄호 이다
  Map<String, dynamic> user = {'id': 1, 'user': "cos"};

  // key 연산은 인덱스 연산자를 활용한다
  print(user['id']);
  print(user['username']);

  ///
  // set 리터럴은 중괄호를 사용한다
  Set<int> lotto = {};

  Random r = Random();
  // 0 ~ 44 --> 1 ~ 45 + 1
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);

  print('------------------------');
  print(lotto);
  print(lotto.runtimeType);

  // --> Set --> List 변경 하고자 한다면
  print(lotto.toList());
  List<int> lottoList = lotto.toList();

  // List로 변경하여 정렬
  lottoList.sort();
  print(lottoList);

  print('------------------------');
  // while 문으로 코드 수정해보기 - 도전과제
  while (true) {
    if (lotto.length > 5) break;
  }
  print(lotto);
}
