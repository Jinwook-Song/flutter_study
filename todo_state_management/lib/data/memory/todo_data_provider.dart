import 'package:fast_app_base/data/memory/vo_todo.dart';
import 'package:fast_app_base/screen/dialog/d_confirm.dart';
import 'package:fast_app_base/screen/main/write/d_write_todo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoDataProvider extends StateNotifier<List<Todo>> {
  TodoDataProvider() : super([]);

  int _targetTodoIndex(Todo todo) {
    final copiedTodoList = List.of(state);
    return copiedTodoList.indexWhere((e) => e.id == todo.id);
  }

  Future<void> changeTodoStatus(Todo todo) async {
    final copiedTodoList = List.of(state);
    final todoIndex = _targetTodoIndex(todo);

    TodoStatus status = todo.status;
    switch (todo.status) {
      case TodoStatus.incomplete:
        status = TodoStatus.ongoing;
        break;
      case TodoStatus.ongoing:
        status = TodoStatus.complete;
        break;
      case TodoStatus.complete:
        final result = await ConfirmDialog('정말로 변경하시겠어요?').show();
        result?.runIfSuccess(
          (data) => status = TodoStatus.incomplete,
        );
        break;
    }
    copiedTodoList[todoIndex] = todo.copyWith(status: status);
    state = copiedTodoList;
  }

  Future<void> addTodo() async {
    final todo = await WriteTodoDialog().show();
    if (todo != null) {
      state.add(
        Todo(
          id: DateTime.now().millisecondsSinceEpoch,
          title: todo.text,
          dueDate: todo.dateTime,
          createdAt: DateTime.now(),
        ),
      );
      state = List.of(state);
    }
  }

  void editTodo(Todo todo) async {
    final copiedTodoList = List.of(state);
    final todoIndex = _targetTodoIndex(todo);

    final result = await WriteTodoDialog(todoForEdit: todo).show();
    if (result != null) {
      final updated =
          todo.copyWith(title: result.text, dueDate: result.dateTime);
      copiedTodoList[todoIndex] = updated;
      state = copiedTodoList;
    }
  }

  void removeTodo(Todo todo) {
    state.remove(todo);
    state = List.of(state);
  }
}

final todoDataProvider = StateNotifierProvider<TodoDataProvider, List<Todo>>(
  (ref) => TodoDataProvider(),
);

extension TodoDataProviderHolder on WidgetRef {
  TodoDataProvider get readTodoHolder => read(todoDataProvider.notifier);
}
