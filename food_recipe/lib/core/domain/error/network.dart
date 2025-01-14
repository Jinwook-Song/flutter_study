import 'package:food_recipe/core/core.dart';

enum NetworkError implements CustomError {
  requestTimeout,
  noInternet,
  serverError,
  format,
  unknwon,
}
