import 'package:flutter/material.dart';
import 'package:food_recipe/domain/domain.dart';

class SavedRecipesProvider with ChangeNotifier {
  final GetSavedRecipesUseCase _getSavedRecipesUseCase;

  List<Recipe> _recipes = [];

  List<Recipe> get recipes => List.unmodifiable(_recipes);

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  SavedRecipesProvider({
    required GetSavedRecipesUseCase getSavedRecipesUseCase,
  }) : _getSavedRecipesUseCase = getSavedRecipesUseCase {
    _load();
  }

  Future<void> _load() async {
    _isLoading = true;
    notifyListeners();

    _recipes = await _getSavedRecipesUseCase.execute();
    _isLoading = false;
    notifyListeners();
  }
}
