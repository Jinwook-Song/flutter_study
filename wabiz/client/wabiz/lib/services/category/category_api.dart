import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wabiz/models/models.dart';

part 'category_api.g.dart';

@RestApi(baseUrl: 'http://localhost:3000/api/v1')
abstract class CategoryApi {
  factory CategoryApi(Dio dio, {String? baseUrl}) = _CategoryApi;

  @GET('/category/{categoryId}')
  Future<CategoryModel> getProjectsByCategoryId(
    @Path('categoryId') String? categoryId,
  );

  @GET('/category/{categoryId}/{projectTypeId}')
  Future<CategoryModel> getProjectsByPorjectType(
    @Path('categoryId') String? categoryId,
    @Path('projectTypeId') String? projectTypeId,
  );
}
