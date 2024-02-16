import 'package:oop_dart/member.dart';

abstract class MemberRepository {
  void save(Member member);
  Member? findById(num memberId);
  // dart는 자동 형변환을 지원하지 않음
  // int, double --> num은 부모 타입
}
