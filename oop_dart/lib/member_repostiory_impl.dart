import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repostiory.dart';

class MemoryMemberRepositoryImpl implements MemberRepository {
  Map<num, Member> memberStore = {};

  // 변수, 조건문, 반복문, 함수 .. 기능 구현
  @override
  Member? findById(num memberId) {
    Member? findMember = memberStore[memberId];
    return findMember;
  }

  @override
  void save(Member member) {
    memberStore[member.id] = member;
    print('멤버 저장 처리 완료');
  }
}
