import 'package:fast_app_base/data/memory/vo_todo.dart';
import 'package:fast_app_base/data/network/result/api_error.dart';
import 'package:fast_app_base/data/simple_result.dart';

abstract interface class TodoRepository {
  Future<SimpleResult<List<Todo>, ApiError>> getTodoList();
  Future<SimpleResult<void, Error>> addTodo(Todo todo);
  Future<SimpleResult<void, Error>> updateTodo(Todo todo);
  Future<SimpleResult<void, Error>> removeTodo(int id);
}
