import 'dart:async';

import 'package:food_recipe/domain/repository/repository.dart';

class MockBookmarkRepositoryImpl implements BookmarkRepository {
  final _ids = <int>{1, 2, 3, 5, 4, 6};
  final StreamController<Set<int>> _streamController =
      StreamController.broadcast();

  MockBookmarkRepositoryImpl() {
    _streamController.add(_ids);
  }

  @override
  Future<void> clear() async {
    _ids.clear();
    _streamController.add(_ids);
  }

  @override
  Future<List<int>> getBookmarkIds() async {
    return _ids.toList();
  }

  @override
  Future<void> save({required int id}) async {
    _ids.add(id);
    _streamController.add(_ids);
  }

  @override
  Future<void> toggle({required int id}) async {
    if (_ids.contains(id)) {
      unSave(id: id);
    } else {
      save(id: id);
    }
    _streamController.add(_ids);
  }

  @override
  Future<void> unSave({required int id}) async {
    _ids.remove(id);
    _streamController.add(_ids);
  }

  @override
  Stream<Set<int>> bookmarkIdsStream() {
    return _streamController.stream;
  }
}
