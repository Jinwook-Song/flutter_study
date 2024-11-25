import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabiz/models/models.dart';
import 'package:wabiz/services/services.dart';

part 'home.g.dart';

@riverpod
HomeRepository homeRepository(Ref ref) {
  final HomeApi homeApiService = ref.watch(homeApiServiceProvider);
  return HomeRepository(homeApiService);
}

abstract class IHomeRepository {
  Future<HomeModel> getHomeProjects();
}

class HomeRepository implements IHomeRepository {
  final HomeApi _homeApi;

  HomeRepository(this._homeApi);

  @override
  Future<HomeModel> getHomeProjects() {
    return _homeApi.getHomeProjects();
  }
}
