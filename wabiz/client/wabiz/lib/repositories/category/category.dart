import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabiz/models/models.dart';
import 'package:wabiz/services/category/category_api_service.dart';
import 'package:wabiz/services/services.dart';

part 'category.g.dart';

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  final CategoryApi categoryApiService = ref.watch(categoryApiServiceProvider);
  return CategoryRepository(categoryApiService);
}

abstract class ICategoryRepository {
  Future<CategoryModel> getProjectsByCategoryId(String categoryId);
  Future<CategoryModel> getProjectsByPorjectType(
    String categoryId,
    String projectTypeId,
  );
}

class CategoryRepository implements ICategoryRepository {
  final CategoryApi _categoryApi;

  CategoryRepository(this._categoryApi);

  @override
  Future<CategoryModel> getProjectsByCategoryId(String categoryId) {
    return _categoryApi.getProjectsByCategoryId(categoryId);
  }

  @override
  Future<CategoryModel> getProjectsByPorjectType(
    String categoryId,
    String projectTypeId,
  ) {
    return _categoryApi.getProjectsByPorjectType(categoryId, projectTypeId);
  }
}
