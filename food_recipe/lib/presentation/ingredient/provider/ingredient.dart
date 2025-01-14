import 'package:flutter/widgets.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/presentation/ingredient/ingredient.dart';

class IngredientProvider with ChangeNotifier {
  final ProcedureRepository _procedureRepository;
  final IngredientRepository _ingredientRepository;
  final GetRecipiesWithCategoryUseCase _getRecipiesWithCategoryUseCase;

  IngredientState get state => _state;
  IngredientState _state = IngredientState.initial();

  IngredientProvider(
      {required ProcedureRepository procedureRepository,
      required IngredientRepository ingredientRepository,
      required GetRecipiesWithCategoryUseCase getRecipiesWithCategoryUseCase})
      : _procedureRepository = procedureRepository,
        _ingredientRepository = ingredientRepository,
        _getRecipiesWithCategoryUseCase = getRecipiesWithCategoryUseCase;

  void onAction(IngredientAction action) {
    switch (action) {
      case OnBookmarkTap():
        break;
      case OnIngredientTap():
        break;
      case OnProcedureTap():
        break;
      case OnFollowTap():
        break;
      case LoadRecipe():
        _loadRecipe(action.recipeId);
    }
  }

  Future<void> _loadRecipe(int recipeId) async {
    _getRecipiesWithCategoryUseCase.emitStream(RecipeCategory.all).listen(
      (recipes) {
        final recipe = recipes.where((e) => e.id == recipeId).firstOrNull;
        _state = _state.copyWith(recipe: recipe);
        notifyListeners();

        _getIngredients();
        _getProcedures();
      },
    );
  }

  Future<void> _getIngredients() async {
    final ingredients = await _ingredientRepository.getIngredients();
    _state = _state.copyWith(ingredients: ingredients);
    notifyListeners();
  }

  Future<void> _getProcedures() async {
    if (state.recipe == null) return;

    final procedures = await _procedureRepository.getProceduresById(
      recipeId: state.recipe!.id,
    );

    _state = _state.copyWith(procedures: procedures);
    notifyListeners();
  }
}
