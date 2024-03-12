import 'package:fast_app_base/data/memory/bloc/bloc_status.dart';
import 'package:fast_app_base/data/memory/bloc/todo_bloc_state.dart';
import 'package:fast_app_base/data/memory/vo_todo.dart';
import 'package:fast_app_base/screen/dialog/d_confirm.dart';
import 'package:fast_app_base/screen/main/write/d_write_todo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<TodoBlocState> {
  TodoCubit()
      : super(const TodoBlocState(todoList: [], status: BlocStatus.initial));

  int _targetTodoIndex(Todo todo) {
    final copiedTodoList = List.of(state.todoList);
    return copiedTodoList.indexWhere((e) => e.id == todo.id);
  }

  void _emitNewList(List<Todo> copiedTodoList) =>
      emit(state.copyWith(todoList: copiedTodoList));

  Future<void> addTodo() async {
    final todo = await WriteTodoDialog().show();
    if (todo != null) {
      final copiedTodoList = List.of(state.todoList);
      copiedTodoList.add(
        Todo(
          id: DateTime.now().millisecondsSinceEpoch,
          title: todo.text,
          dueDate: todo.dateTime,
          createdAt: DateTime.now(),
        ),
      );
      _emitNewList(copiedTodoList);
    }
  }

  void changeTodoStatus(Todo todo) async {
    final copiedTodoList = List.of(state.todoList);
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
    emit(state.copyWith(todoList: copiedTodoList));
  }

  Future<void> editTodo(Todo todo) async {
    final copiedTodoList = List.of(state.todoList);
    final todoIndex = _targetTodoIndex(todo);
    final result = await WriteTodoDialog(todoForEdit: todo).show();
    if (result != null) {
      copiedTodoList[todoIndex] = todo.copyWith(
        title: result.text,
        dueDate: result.dateTime,
        updatedAt: DateTime.now(),
      );
      emit(state.copyWith(todoList: copiedTodoList));
    }
  }

  deleteTodo(Todo todo) {
    final copiedTodoList = List.of(state.todoList);
    copiedTodoList.removeWhere((e) => e.id == todo.id);
    emit(state.copyWith(todoList: copiedTodoList));
  }
}
