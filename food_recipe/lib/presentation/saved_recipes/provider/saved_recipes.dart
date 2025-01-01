import 'package:flutter/material.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/presentation/presentation.dart';

class SavedRecipesProvider with ChangeNotifier {
  final GetSavedRecipesUseCase _getSavedRecipesUseCase;

  SavedRecipiesState _state = SavedRecipiesState.initial();

  SavedRecipiesState get state => _state;

  SavedRecipesProvider({
    required GetSavedRecipesUseCase getSavedRecipesUseCase,
  }) : _getSavedRecipesUseCase = getSavedRecipesUseCase {
    _load();
  }

  Future<void> _load() async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    _state = _state.copyWith(
      isLoading: false,
      recipes: await _getSavedRecipesUseCase.execute(),
    );
    notifyListeners();
  }
}
