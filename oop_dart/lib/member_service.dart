import 'package:oop_dart/member.dart';

abstract class MemberSerivce {
  void signUp(Member member);
  Member? selectMember(num memberId);
}
