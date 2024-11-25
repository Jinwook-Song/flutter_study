import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabiz/services/services.dart';

part 'home_api_service.g.dart';

@riverpod
HomeApi homeApiService(Ref ref) {
  final dio = ref.watch(dioProvider);
  return HomeApi(dio);
}
