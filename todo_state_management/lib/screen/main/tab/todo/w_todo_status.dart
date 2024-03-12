import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/vo_todo.dart';
import 'package:flutter/material.dart';

class TodoStatusWidget extends StatelessWidget with TodoDataProvider {
  final Todo todo;
  TodoStatusWidget(this.todo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: () {
        todoData.changeTodoStatus(todo);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 25,
        height: 25,
        child: switch (todo.status) {
          TodoStatus.incomplete => const Checkbox(
              value: false,
              onChanged: null,
            ),
          TodoStatus.ongoing => const Checkbox(
              value: false,
              onChanged: null,
              fillColor: MaterialStatePropertyAll(
                Colors.amber,
              ),
            ),
          TodoStatus.complete => Checkbox(
              value: true,
              onChanged: null,
              fillColor: MaterialStatePropertyAll(
                context.appColors.checkBoxColor,
              ),
            ),
        },
      ),
    );
  }
}
