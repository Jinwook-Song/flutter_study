import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/domain/domain.dart';
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
  getIt.registerSingleton<GetSavedRecipesUseCase>(
    GetSavedRecipesUseCase(
      recipeRepository: getIt.get<RecipeRepository>(),
      bookmarkRepository: getIt.get<BookmarkRepository>(),
    ),
  );

  // provider
  getIt.registerFactory(
    () => SavedRecipesProvider(
      getSavedRecipesUseCase: getIt.get<GetSavedRecipesUseCase>(),
    ),
  );
  getIt.registerFactory(HomeProvider.new);
  getIt.registerFactory(
    () => SearchProvider(
      getRecentSearchRecipesUseCase: getIt.get<GetRecentSearchRecipesUseCase>(),
      getRecipesWithQueryUseCase: getIt.get<GetRecipesWithQueryUseCase>(),
    ),
  );
}
