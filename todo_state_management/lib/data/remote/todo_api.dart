import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fast_app_base/data/memory/vo_todo.dart';
import 'package:fast_app_base/data/network/result/api_error.dart';
import 'package:fast_app_base/data/simple_result.dart';
import 'package:fast_app_base/data/todo_repository.dart';

class TodoApi implements TodoRepository {
  // 로컬 네트워크
  final client = Dio(BaseOptions(baseUrl: 'http://192.168.0.49:8080'));

  TodoApi._();

  static TodoApi instance = TodoApi._();

  @override
  Future<SimpleResult<void, Error>> addTodo(Todo todo) {
    // TODO: implement addTodo
    throw UnimplementedError();
  }

  @override
  Future<SimpleResult<List<Todo>, ApiError>> getTodoList() async {
    return tryRequest(() async {
      final todoList = await client.get<List>('todos');
      return SimpleResult.success(
        todoList.data
            ?.map(
              (todo) => Todo(
                id: todo.id,
                title: todo.title,
                dueDate: todo.dueDate,
                createdAt: todo.createdAt,
              ),
            )
            .toList(),
      );
    });
  }

  @override
  Future<SimpleResult<void, Error>> removeTodo(int id) {
    // TODO: implement removeTodo
    throw UnimplementedError();
  }

  @override
  Future<SimpleResult<void, Error>> updateTodo(Todo todo) {
    // TODO: implement updateTodo
    throw UnimplementedError();
  }

  Future<SimpleResult<T, ApiError>> tryRequest<T>(
    Future<SimpleResult<T, ApiError>> Function() apiLogic,
  ) async {
    try {
      return await apiLogic();
    } on DioException catch (e) {
      return SimpleResult.failure(
        ApiError.createErrorResult(e),
      );
    } catch (e) {
      return SimpleResult.failure(
        ApiError(message: 'unknown error ${e.toString()}'),
      );
    }
  }
}
