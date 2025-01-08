import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/domain/use_case/toggle_bookmark_recipe.dart';
import 'package:food_recipe/presentation/presentation.dart';

final getIt = GetIt.instance;

void diSetup() {
  // source
  getIt.registerSingleton<LocalRecipeDataSource>(
      MockLocalRecipeDataSourceImpl());
  getIt.registerSingleton<RemoteRecipeDataSource>(
      MockRemoteRecipeDataSourceImpl());

  // repository
  getIt.registerSingleton<BookmarkRepository>(
    MockBookmarkRepositoryImpl(),
  );
  getIt.registerSingleton<RecentSearchRecipeRepository>(
    MockRecentSearchRecipeRepositoryImpl(
      localRecipeDataSourece: getIt.get<LocalRecipeDataSource>(),
    ),
  );
  getIt.registerSingleton<RecipeRepository>(
    MockRecipeRepositoryImpl(
      localRecipeDataSource: getIt.get<LocalRecipeDataSource>(),
      remoteRecipeDataSource: getIt.get<RemoteRecipeDataSource>(),
    ),
  );

  // use case
  getIt.registerSingleton<GetNewRecipesUseCase>(
    GetNewRecipesUseCase(
      recipeRepository: getIt.get<RecipeRepository>(),
    ),
  );
  getIt.registerSingleton<GetRecentSearchRecipesUseCase>(
    GetRecentSearchRecipesUseCase(
      getIt.get<RecentSearchRecipeRepository>(),
    ),
  );
  getIt.registerSingleton<GetRecipesWithQueryUseCase>(
    GetRecipesWithQueryUseCase(
      recipeRepository: getIt.get<RecipeRepository>(),
      recentSearchRecipeRepository: getIt.get<RecentSearchRecipeRepository>(),
    ),
  );
  getIt.registerSingleton<GetRecipiesWithCategoryUseCase>(
    GetRecipiesWithCategoryUseCase(
        bookmarkRepository: getIt.get<BookmarkRepository>(),
        recipeRepository: getIt.get<RecipeRepository>()),
  );
  getIt.registerSingleton<GetSavedRecipesUseCase>(
    GetSavedRecipesUseCase(
      recipeRepository: getIt.get<RecipeRepository>(),
      bookmarkRepository: getIt.get<BookmarkRepository>(),
    ),
  );
  getIt.registerSingleton<ToggleBookmarkRecipeUseCase>(
    ToggleBookmarkRecipeUseCase(
      recipeRepository: getIt.get<RecipeRepository>(),
      bookmarkRepository: getIt.get<BookmarkRepository>(),
    ),
  );

  // provider
  getIt.registerFactory<SavedRecipesProvider>(
    () => SavedRecipesProvider(
        getSavedRecipesUseCase: getIt.get<GetSavedRecipesUseCase>(),
        toggleBookmarkRecipeUseCase: getIt.get<ToggleBookmarkRecipeUseCase>()),
  );
  getIt.registerFactory<HomeProvider>(
    () => HomeProvider(
      getNewRecipiesUseCase: getIt.get<GetNewRecipesUseCase>(),
      getRecipiesWithCategoryUseCase:
          getIt.get<GetRecipiesWithCategoryUseCase>(),
      toggleBookmarkRecipeUseCase: getIt.get<ToggleBookmarkRecipeUseCase>(),
    ),
  );
  getIt.registerFactory<SearchProvider>(
    () => SearchProvider(
      getRecentSearchRecipesUseCase: getIt.get<GetRecentSearchRecipesUseCase>(),
      getRecipesWithQueryUseCase: getIt.get<GetRecipesWithQueryUseCase>(),
    ),
  );
}
