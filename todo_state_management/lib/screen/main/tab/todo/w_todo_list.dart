import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_todo_item.dart';
import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.todoHolder.notifier,
      builder: (context, todoList, child) {
        if (todoList.isEmpty) return '할일을 작성해보세요'.text.makeCentered();

        return Column(
          children: [
            for (var todo in todoList) TodoItem(todo),
          ],
        );
      },
    );
  }
}
