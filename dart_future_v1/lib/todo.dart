class Todo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  // 기본 생성자
  // 강제성 - 생성자
  Todo(this.userId, this.id, this.title, this.completed);

  // 명명된 생성자 2 - Map를 넣으면 Todo 오브젝트가 반환 되는 코드를 작성
  // 이니셜 라이져 (변수를 초기화 해주는 문법)
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json["userIkd"],
        id = json["id"],
        title = json["title"],
        completed = json["completed"];

  @override
  String toString() {
    return '내가 보는 - Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}
