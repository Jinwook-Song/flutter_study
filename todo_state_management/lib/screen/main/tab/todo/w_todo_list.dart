import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/bloc/todo_bloc_state.dart';
import 'package:fast_app_base/data/memory/todo_cubit.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_todo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoCubit, TodoBlocState>(
      builder: (context, state) {
        if (state.todoList.isEmpty) return '할일을 작성해보세요'.text.makeCentered();

        return Column(
          children: [
            for (var todo in state.todoList) TodoItem(todo),
          ],
        );
      },
    );
  }
}

/* GetX
class TodoList extends StatelessWidget with TodoDataProvider {
  TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final todoList = todoData.todoList;
      if (todoList.isEmpty) return '할일을 작성해보세요'.text.makeCentered();

      return Column(
        children: [
          for (var todo in todoList) TodoItem(todo),
        ],
      );
    });
  }
}
 */