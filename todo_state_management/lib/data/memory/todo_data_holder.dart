import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/data/memory/vo_todo.dart';
import 'package:fast_app_base/screen/dialog/d_confirm.dart';
import 'package:fast_app_base/screen/main/write/d_write_todo.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class TodoDataHolder extends GetxController {
  final RxList<Todo> todoList = <Todo>[].obs;

  Future<void> addTodo() async {
    final todo = await WriteTodoDialog().show();
    if (todo != null) {
      todoList.add(
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
    todoList.refresh();
    // update(); // controller update
  }

  editTodo(Todo todo) async {
    final result = await WriteTodoDialog(todoForEdit: todo).show();
    if (result != null) {
      todo.title = result.text;
      todo.dueDate = result.dateTime;
      todoList.refresh();
    }
  }

  deleteTodo(Todo todo) {
    todoList.remove(todo);
    todoList.refresh();
  }
}

mixin class TodoDataProvider {
  late final TodoDataHolder todoData = Get.find();
}
