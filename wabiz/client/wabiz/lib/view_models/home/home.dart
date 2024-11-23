import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabiz/models/models.dart';
import 'package:wabiz/repositories/home/home.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<HomeItemModel> projects,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}

@riverpod
class HomeViewModel extends _$HomeViewModel {
  HomeRepository get _homeRepository => ref.read(homeRepositoryProvider);

  @override
  HomeState build() {
    return const HomeState();
  }

  update(List<HomeItemModel> projects) {
    state = state.copyWith(projects: [...projects]);
  }

  Future<HomeModel> fetchHomeData() async {
    final HomeModel result = await _homeRepository.getHomeProjects();
    update(result.projects);
    return result;
  }
}

@riverpod
Future<HomeModel> fetchHomeProject(Ref ref) async {
  try {
    return ref.read(homeRepositoryProvider).getHomeProjects();
  } catch (e) {
    return HomeModel();
  }
}

@riverpod
Future<List<ProjectCategory>> fetchHomeCategories(Ref ref) async {
  await Future.delayed(Duration(seconds: 2));
  return [
    for (final index in List.generate(10, (i) => i + 1))
      ProjectCategory(
        id: index,
        title: 'Category $index',
        iconPath: 'assets/icons/categories/${index % 9 + 1}.png',
      ),
  ];
}
