import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_todo.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required int id,
    required String title,
    required DateTime dueDate,
    DateTime? updatedAt,
    required DateTime createdAt,
    @Default(TodoStatus.incomplete) TodoStatus status,
  }) = _Todo;
}

enum TodoStatus { incomplete, ongoing, complete }
