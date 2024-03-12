import 'package:fast_app_base/data/memory/todo_data_notifier.dart';
import 'package:fast_app_base/data/memory/vo_todo.dart';
import 'package:fast_app_base/screen/dialog/d_confirm.dart';
import 'package:fast_app_base/screen/main/write/d_write_todo.dart';
import 'package:flutter/material.dart';

class TodoDataHolder extends InheritedWidget {
  final TodoDataNotifier notifier;

  const TodoDataHolder({
    super.key,
    required super.child,
    required this.notifier,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static TodoDataHolder _of(BuildContext context) {
    TodoDataHolder inherited =
        context.dependOnInheritedWidgetOfExactType<TodoDataHolder>()!;
    return inherited;
  }

  Future<void> addTodo() async {
    final todo = await WriteTodoDialog().show();
    if (todo != null) {
      notifier.addTodo(
        Todo(
          id: DateTime.now().millisecondsSinceEpoch,
          title: todo.text,
          dueDate: todo.dateTime,
        ),
      );
    }
  }

  Future<void> changeTodoStatus(Todo todo) async {
    switch (todo.status) {
      case TodoStatus.incomplete:
        todo.status = TodoStatus.ongoing;
        break;
      case TodoStatus.ongoing:
        todo.status = TodoStatus.complete;
        break;
      case TodoStatus.complete:
        final result = await ConfirmDialog('정말로 변경하시겠어요?').show();
        result?.runIfSuccess(
          (data) => todo.status = TodoStatus.incomplete,
        );
        break;
    }
    notifier.notify();
  }

  editTodo(Todo todo) async {
    final result = await WriteTodoDialog(todoForEdit: todo).show();
    if (result != null) {
      todo.title = result.text;
      todo.dueDate = result.dateTime;
      notifier.notify();
    }
  }

  deleteTodo(Todo todo) {
    notifier.value.remove(todo);
    notifier.notify();
  }
}

extension TodoDataHolderContextExtension on BuildContext {
  TodoDataHolder get todoHolder => TodoDataHolder._of(this);
}
