// ViewModel
import 'package:my_todo_mvvm/models/todo_item.dart';

class TodoListViewModel {
  // 화면 사용될 데이터
  List<TodoItem> _items = []; // private

  // get 메서드 만들어 주기
  List<TodoItem> get items => _items;

  // 리스트에 TodoItem 객체를 추가하는 메서드 만들기
  void addItem(String title) {
    _items.add(TodoItem(title: title, isDone: false));
  }

  //
  void toggleItem(TodoItem todo) {
    todo.isDone = !todo.isDone;
  }
}
