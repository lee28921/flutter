class TodoItem {
  String title;
  bool isDone;

  TodoItem({required this.title, required this.isDone});

  @override
  String toString() {
    return 'TodoItem{title: $title, isDone: $isDone}';
  }
}
