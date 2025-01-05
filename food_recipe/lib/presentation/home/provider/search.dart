import 'package:flutter/material.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/domain/model/filter.dart';
import 'package:food_recipe/presentation/home/home.dart';

class SearchProvider with ChangeNotifier {
  final GetRecentSearchRecipesUseCase _getRecentSearchRecipesUseCase;
  final GetRecipesWithQueryUseCase _getRecipesWithQueryUseCase;

  SearchState _state = SearchState.initial();

  SearchState get state => _state;

  SearchProvider(
      {required GetRecentSearchRecipesUseCase getRecentSearchRecipesUseCase,
      required GetRecipesWithQueryUseCase getRecipesWithQueryUseCase})
      : _getRecentSearchRecipesUseCase = getRecentSearchRecipesUseCase,
        _getRecipesWithQueryUseCase = getRecipesWithQueryUseCase {
    _load();
  }

  Future<void> _load() async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    _state = _state.copyWith(
      isLoading: false,
      recipes: await _getRecentSearchRecipesUseCase.execute(),
    );
    notifyListeners();
  }

  Future<void> searchRecipes(String query) async {
    final GetRecipesWithQueryParams params =
        GetRecipesWithQueryParams(query: query);

    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    _state = _state.copyWith(
      isLoading: false,
      recipes: await _getRecipesWithQueryUseCase.execute(params),
      searchQuery: query,
    );
    notifyListeners();
  }

  void onFilterChange(Filter filter) {
    _state = _state.copyWith(filter: filter);
    notifyListeners();
  }
}
