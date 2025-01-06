import 'package:flutter/material.dart';
import 'package:food_recipe/core/domain/error/error.dart';
import 'package:food_recipe/core/domain/result/result.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/presentation/presentation.dart';

class HomeProvider extends ChangeNotifier {
  final GetRecipiesWithCategoryUseCase _getRecipiesWithCategoryUseCase;

  HomeProvider(this._getRecipiesWithCategoryUseCase) {
    _load();
  }

  HomeState _state = HomeState.initial();

  HomeState get state => _state;

  Future<void> _load() async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    final results = await _getRecipiesWithCategoryUseCase.execute(
      state.selectedCategory,
    );

    switch (results) {
      case Data<List<Recipe>, CustomError>():
        _state = _state.copyWith(
          isLoading: false,
          dishes: results.data,
        );
      case Error<List<Recipe>, CustomError>():
      // Error handling
    }

    notifyListeners();

    _getRecipiesWithCategoryUseCase.execute(state.selectedCategory);
  }

  void onSelectCategory(RecipeCategory category) {
    _state = _state.copyWith(selectedCategory: category);
    notifyListeners();

    _load();
  }
}
