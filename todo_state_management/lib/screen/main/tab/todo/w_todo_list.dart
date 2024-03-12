import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_todo_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

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
