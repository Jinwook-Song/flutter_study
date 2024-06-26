import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/data/memory/bloc/todo_event.dart';
import 'package:fast_app_base/data/memory/todo_data_provider.dart';
import 'package:fast_app_base/data/memory/vo_todo.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_todo_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class TodoItem extends ConsumerWidget {
  final Todo todo;
  const TodoItem(this.todo, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dismissible(
      key: ValueKey(todo.id),
      onDismissed: (direction) {
        // context.readTodoCubit.deleteTodo(todo);
        // context.readTodoBloc.add(TodoRemovedEvent(todo));
        ref.readTodoHolder.removeTodo(todo);
      },
      background: RoundedContainer(
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Gap(20),
            Icon(
              EvaIcons.trash2Outline,
              color: Colors.white,
            ),
          ],
        ),
        color: context.appColors.removeTodoBg,
      ),
      secondaryBackground: RoundedContainer(
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              EvaIcons.trash2Outline,
              color: Colors.white,
            ),
            Gap(20),
          ],
        ),
        color: context.appColors.removeTodoBg,
      ),
      child: RoundedContainer(
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            todo.dueDate.relativeDays.text.make(),
            Row(
              children: [
                TodoStatusWidget(todo),
                Expanded(child: todo.title.text.size(20).medium.make()),
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () {
                    // context.readTodoCubit.editTodo(todo);
                    // context.readTodoBloc.add(TodoContentUpdateEvent(todo));
                    ref.readTodoHolder.editTodo(todo);
                  },
                  icon: const Icon(EvaIcons.editOutline),
                ),
              ],
            ),
          ],
        ).p(10),
        color: context.appColors.itemBackground,
        margin: const EdgeInsets.only(bottom: 6),
      ),
    );
  }
}
