// 코드의 시작점
import 'package:oop_dart/discount_policy.dart';
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repostiory.dart';
import 'package:oop_dart/member_repostiory_impl.dart';
import 'package:oop_dart/member_service.dart';
import 'package:oop_dart/member_service_impl.dart';
import 'package:oop_dart/order.dart';
import 'package:oop_dart/order_service.dart';
import 'package:oop_dart/order_service_impl.dart';
import 'package:oop_dart/percent_discount_policy_impl.dart';

void main() {
  // 테스트
  MemberRepository memberRepository = MemoryMemberRepositoryImpl();

  MemberSerivce memberSerivce = MemberServiceImpl(memberRepository);

  Member member1 = Member(id: 1, name: '홍길동', grade: Grade.BASIC);
  Member member2 = Member(id: 2, name: '이순신', grade: Grade.VIP);

  memberSerivce.signUp(member1); // member2로 바꿀때 이거 안 바꾸면 null 값 나옴

  // 회원 찾기
  Member? findMember = memberSerivce.selectMember(member1.id);

  print('--------------------');
  // 할인
  // 1 - 고정할인 정책 선택
  DiscountPolicy discountPolicy = PercentDiscountPolicy();
  OrderService orderService =
      OrderServiceImpl(memberRepository, discountPolicy);

  Order createOrder = orderService.createOrder(findMember!.id, "맥북", 1000000);
  print(createOrder);
}
