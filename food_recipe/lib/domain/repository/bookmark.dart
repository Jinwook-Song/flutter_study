abstract interface class BookmarkRepository {
  Future<void> save({required int id});

  Future<void> unSave({required int id});

  Future<void> toggle({required int id});

  Future<List<int>> getBookmarkIds();

  Future<void> clear();
}
