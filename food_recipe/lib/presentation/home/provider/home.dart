import 'package:flutter/material.dart';
import 'package:food_recipe/core/domain/error/error.dart';
import 'package:food_recipe/core/domain/result/result.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/presentation/home/action/home.dart';
import 'package:food_recipe/presentation/presentation.dart';

class HomeProvider extends ChangeNotifier {
  final GetRecipiesWithCategoryUseCase _getRecipiesWithCategoryUseCase;
  final GetNewRecipesUseCase _getNewRecipesUseCase;

  HomeProvider(
      {required GetRecipiesWithCategoryUseCase getRecipiesWithCategoryUseCase,
      required GetNewRecipesUseCase getNewRecipiesUseCase})
      : _getRecipiesWithCategoryUseCase = getRecipiesWithCategoryUseCase,
        _getNewRecipesUseCase = getNewRecipiesUseCase {
    _getRecipesWithCategory();
    _fetchNewRecipes();
  }

  HomeState _state = HomeState.initial();

  HomeState get state => _state;

  Future<void> _getRecipesWithCategory() async {
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

  Future<void> _fetchNewRecipes() async {
    final result = await _getNewRecipesUseCase.execute();
    switch (result) {
      case Data<List<Recipe>, CustomError>():
        _state = _state.copyWith(newRecipes: result.data);
      case Error<List<Recipe>, CustomError>():
      // Error handling
    }
  }

  void _onSelectCategory(RecipeCategory category) {
    _state = _state.copyWith(selectedCategory: category);
    notifyListeners();

    _getRecipesWithCategory();
  }

  void onAction(HomeAction action) {
    switch (action) {
      case OnSearchTap():
        break;
      case OnSelectCategory():
        _onSelectCategory(action.category);
    }
  }
}
