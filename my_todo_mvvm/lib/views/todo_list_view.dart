import 'package:flutter/material.dart';
import 'package:my_todo_mvvm/models/todo_item.dart';
import 'package:my_todo_mvvm/view_models/todo_list_view_model.dart';

// View 클래스

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
} // end of TodoListView class

class _TodoListViewState extends State<TodoListView> {
  final TextEditingController _controller = TextEditingController();
  final TodoListViewModel listViewModel = TodoListViewModel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Enter todo item...',
              suffix: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    listViewModel.addItem(_controller.text);
                    _controller.clear();
                  });
                },
              ),
            ),
          ),
          ListView.builder(
            itemCount: listViewModel.items.length,
            itemBuilder: (context, index) {
              var item = listViewModel.items[index];
              // 두 개의 인수 값을 받아서 위젯을 시키면 된다
              return ListTile(
                title: Text(item.title),
                trailing: Checkbox(
                  value: item.isDone,
                  onChanged: (value) {
                    print("value : ${value}");
                    setState(() {
                      listViewModel.toggleItem(item);
                    });
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  } // end of _TodoListViewState
}
