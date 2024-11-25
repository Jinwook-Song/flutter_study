import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rest_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  String localhost = 'localhost';
  if (defaultTargetPlatform == TargetPlatform.android) {
    localhost = '10.0.2.2';
  }

  final BaseOptions options = BaseOptions(
    baseUrl: 'http://$localhost:3000/api/v1',
    responseType: ResponseType.json,
    headers: {
      'Content-Type': 'application/json',
    },
    connectTimeout: Duration(seconds: 30),
    receiveTimeout: Duration(seconds: 30),
  );
  return Dio(options);
}
