import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/domain/use_case/toggle_bookmark_recipe.dart';
import 'package:food_recipe/presentation/presentation.dart';

class SavedRecipesProvider with ChangeNotifier {
  final GetSavedRecipesUseCase _getSavedRecipesUseCase;
  final ToggleBookmarkRecipeUseCase _toggleBookmarkRecipeUseCase;
  StreamSubscription<List<Recipe>>? _streamSubscription;

  SavedRecipiesState _state = SavedRecipiesState.initial();

  SavedRecipiesState get state => _state;

  SavedRecipesProvider({
    required GetSavedRecipesUseCase getSavedRecipesUseCase,
    required ToggleBookmarkRecipeUseCase toggleBookmarkRecipeUseCase,
  })  : _getSavedRecipesUseCase = getSavedRecipesUseCase,
        _toggleBookmarkRecipeUseCase = toggleBookmarkRecipeUseCase {
    _streamSubscription = _getSavedRecipesUseCase.emitStream().listen(
      (recipes) {
        _state = _state.copyWith(
          recipes: recipes,
        );
        notifyListeners();
      },
    );
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  onAction(SavedRecipesAction action) {
    switch (action) {
      case DismissBookmark():
        _toggleBookmarkRecipeUseCase.execute(action.recipe.id);
        break;
      case OnRecipeTap():
        break;
    }
  }
}
