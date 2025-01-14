import 'package:food_recipe/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<T, E extends CustomError> with _$Result<T, E> {
  const factory Result.data(T data) = Data;
  const factory Result.error(E error) = Error;
}
