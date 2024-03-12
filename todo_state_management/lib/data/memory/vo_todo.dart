enum TodoStatus { incomplete, ongoing, complete }

class Todo {
  int id;
  String title;
  DateTime createdAt;
  DateTime? updatedAt;
  DateTime dueDate;
  TodoStatus status;

  Todo({
    required this.id,
    required this.title,
    required this.dueDate,
    this.status = TodoStatus.incomplete,
  }) : createdAt = DateTime.now();
}
