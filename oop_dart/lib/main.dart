// 코드의 시작점
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repostiory.dart';
import 'package:oop_dart/member_repostiory_impl.dart';
import 'package:oop_dart/member_service.dart';
import 'package:oop_dart/member_service_impl.dart';

void main() {
  // 테스트
  MemberRepository memberRepository = MemoryMemberRepositoryImpl();

  MemberSerivce memberSerivce = MemberServiceImpl(memberRepository);

  Member member1 = Member(id: 1, name: '홍길동', grade: Grade.BASIC);
  Member member2 = Member(id: 2, name: '이순신', grade: Grade.VIP);

  memberSerivce.signUp(member1);

  // 회원 찾기
  Member? findMember = memberSerivce.selectMember(member2.id);
  print(findMember.toString());
}
