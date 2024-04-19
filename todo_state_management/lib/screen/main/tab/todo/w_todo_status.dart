import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/bloc/todo_event.dart';
import 'package:fast_app_base/data/memory/todo_data_provider.dart';
import 'package:fast_app_base/data/memory/vo_todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoStatusWidget extends ConsumerWidget {
  final Todo todo;
  const TodoStatusWidget(this.todo, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Tap(
      onTap: () {
        // context.readTodoCubit.changeTodoStatus(todo);
        // context.readTodoBloc.add(TodoStatusUpdateEvent(todo));
        ref.readTodoHolder.changeTodoStatus(todo);
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
