import 'dart:convert';

void main() {
  // 1단계 - 통신을 x 직접 json 형식의 데이터를 만들어 보자
  String jsonStr = '''
    {
      "userId" : 1,
      "id" : 100,
      "title": "json 파싱이란?",
      "completed" : false
    }
  ''';

  // 위 코드는 단지 형식이 있는 문자열입니다(json)

  // 1단계 - 라이브러리가 필요 하다
  // json 문자열을 파싱하여 Map 객체로 변환을 해야 한다

  Map<String, dynamic> jsonStrToMap = json.decode(jsonStr);
  print(jsonStrToMap.runtimeType);
  print(jsonStrToMap);

  jsonStrToMap.forEach((key, value) {
    print("key - ${key}");
    print("value - ${value}");
  });

  int userId = jsonStrToMap["userId"];

  // 2 단계 Map 형식에 데이터를 Object 타입으로 변경 하자
  var myTodo1 = Todo.fromJson(jsonStrToMap);
}

class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  // 기본 생성자 1
  // 강제성 - 생성자
  Todo(this.userId, this.id, this.title, this.completed);

  // 명명된 생성자 2 - Map를 넣으면 Todo 오브젝트가 반환되는 코드를 작성
  // 이니셜 라이져 (변수를 초기화 해주는 문법)
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json["userId"],
        id = json["id"],
        title = json["title"],
        completed = json["completed"];

  @override
  String toString() {
    return '내가 보는 - Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}
