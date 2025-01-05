import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';
part 'filter.g.dart';

@freezed
class Filter with _$Filter {
  const factory Filter({
    required TimeFilter time,
    required int rate,
    required CategoryFilter category,
  }) = _Filter;

  factory Filter.initial() {
    return const Filter(
      time: TimeFilter.all,
      rate: 5,
      category: CategoryFilter.all,
    );
  }

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);
}

enum FilterType { time, rate, category }

enum TimeFilter {
  all,
  newest,
  oldest,
  popularity,
}

enum CategoryFilter {
  all,
  cereal,
  vegetables,
  dinner,
  chinese,
  localDish,
  fruit,
  breakFast,
  spanish,
  lunch
}
