void main() {

  // 1. null 속성 접근 방법 ?, ??
  String? maybeName;
  maybeName?.length ?? 0; // null 아니면 문자열 길이를 반환, null -> 0을 반환
  //print(maybeName.length);

  // 2. null에 안전한 객체 메서드 접근
  String? name = getName(); // null 또는 문자열을 담을 수 있다
  String? returnName = name?.toLowerCase() ?? "홍길동";

  print(returnName);
}

// 전역 함수
String? getName() {

  return null;
}