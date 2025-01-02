import 'package:food_recipe/domain/repository/repository.dart';

class MockBookmarkRepositoryImpl implements BookmarkRepository {
  final _ids = <int>{1, 2, 3, 5, 4, 6};

  @override
  Future<void> clear() async {
    _ids.clear();
  }

  @override
  Future<List<int>> getBookmarkIds() async {
    return _ids.toList();
  }

  @override
  Future<void> save({required int id}) async {
    _ids.add(id);
  }

  @override
  Future<void> toggle({required int id}) async {
    if (_ids.contains(id)) {
      unSave(id: id);
    } else {
      save(id: id);
    }
  }

  @override
  Future<void> unSave({required int id}) async {
    _ids.remove(id);
  }
}
