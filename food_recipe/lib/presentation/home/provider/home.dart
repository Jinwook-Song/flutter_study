import 'package:flutter/material.dart';
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

    _state = _state.copyWith(
      isLoading: false,
      dishes: await _getRecipiesWithCategoryUseCase.execute(
        state.selectedCategory,
      ),
    );
    notifyListeners();

    _getRecipiesWithCategoryUseCase.execute(state.selectedCategory);
  }

  void onSelectCategory(RecipeCategory category) {
    _state = _state.copyWith(selectedCategory: category);
    notifyListeners();

    _load();
  }
}
