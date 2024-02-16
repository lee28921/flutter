abstract class MemberRepository {
  void save();
  findById(num memberId);
  // dart는 자동 형변환을 지원하지 않음
  // int, double --> num은 부모 타입
}
