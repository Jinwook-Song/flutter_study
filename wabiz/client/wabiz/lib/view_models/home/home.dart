import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabiz/models/models.dart';

part 'home.g.dart';

@riverpod
Future<List<ProjectCategory>> fetchHomeCategories(Ref ref) async {
  await Future.delayed(Duration(seconds: 2));
  return [
    ProjectCategory(
      id: 1,
      title: 'Category 1',
      iconPath: 'assets/icons/categories/1.png',
    ),
    ProjectCategory(
      id: 2,
      title: 'Category 2',
      iconPath: 'assets/icons/categories/2.png',
    ),
    ProjectCategory(
      id: 3,
      title: 'Category 3',
      iconPath: 'assets/icons/categories/3.png',
    ),
  ];
}
