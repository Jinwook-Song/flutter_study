import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabiz/models/category/category_state.dart';
import 'package:wabiz/models/models.dart';

part 'category.g.dart';

@riverpod
class CategoryViewModel extends _$CategoryViewModel {
  @override
  CategoryScreenState build() {
    return CategoryScreenState(
      selectedType: ProjectType(id: 0, type: '전체'),
      projectFilter: CategoryProjectType.recommended,
      project: [],
    );
  }

  updateType(ProjectType type) {
    state = state.copyWith(
      selectedType: type,
      projectFilter: CategoryProjectType.recommended,
    );
  }
}

@riverpod
Future<List<ProjectType>> fetchTypeTabs(Ref ref) async {
  await Future.delayed(Duration(seconds: 3));
  return [
    ProjectType(id: 0, type: '전체', imagePath: 'assets/icons/type/all.svg'),
    ProjectType(id: 0, type: '베스트 펀딩', imagePath: 'assets/icons/type/best.svg'),
    for (var i in List.generate(8, (index) => index + 1))
      ProjectType(
        id: i,
        type: 'type:$i',
        imagePath: 'assets/icons/type/$i.svg',
      ),
  ];
}
