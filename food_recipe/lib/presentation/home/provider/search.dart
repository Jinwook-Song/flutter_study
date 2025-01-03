import 'package:flutter/material.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/presentation/home/home.dart';

class SearchProvider with ChangeNotifier {
  final GetRecentSearchRecipes _getRecentSearchRecipes;

  SearchState _state = SearchState.initial();

  SearchState get state => _state;

  SearchProvider(this._getRecentSearchRecipes) {
    _load();
  }

  Future<void> _load() async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    _state = _state.copyWith(
      isLoading: false,
      recipes: await _getRecentSearchRecipes.execute(),
    );
    notifyListeners();
  }
}
