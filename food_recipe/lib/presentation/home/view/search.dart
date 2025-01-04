import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/data/data.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/presentation/home/home.dart';
import 'package:food_recipe/ui/ui.dart';

final _getRecentSearchRecipesUseCase = GetRecentSearchRecipesUseCase(
  MockRecentSearchRecipeImpl(
    MockLocalRecipeDataSourceImpl(),
  ),
);

final _getRecipesWithQueryUseCase = GetRecipesWithQueryUseCase(
  recipeRepository: MockRecipeRepositoryImpl(
    remoteRecipeDataSource: MockRemoteRecipeDataSourceImpl(),
  ),
  recentSearchRecipeRepository: MockRecentSearchRecipeImpl(
    MockLocalRecipeDataSourceImpl(),
  ),
);

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = SearchProvider(
        getRecentSearchRecipesUseCase: _getRecentSearchRecipesUseCase,
        getRecipesWithQueryUseCase: _getRecipesWithQueryUseCase);

    return ListenableBuilder(
      listenable: provider,
      builder: (context, child) {
        final SearchState state = provider.state;
        return SearchScreenView(
          state: state,
          onChanged: provider.searchRecipes,
        );
      },
    );
  }
}

class SearchScreenView extends StatelessWidget {
  final SearchState state;
  final void Function(String query)? onChanged;

  const SearchScreenView({
    super.key,
    required this.state,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: context.pop, child: const Icon(Icons.arrow_back)),
        title: const Text(
          'Search recipes',
          style: TextStyles.mediumTextBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(17),
            Row(
              children: [
                Expanded(
                  child: SearchInputField(
                    placeholder: 'Search recipe',
                    onChanged: onChanged,
                  ),
                ),
                const Gap(20),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary100),
                    child: const Icon(
                      Icons.tune_outlined,
                      color: AppColors.white,
                    ))
              ],
            ),
            const Gap(20),
            const Row(
              children: [
                Text(
                  'Recent Search',
                  style: TextStyles.normalTextBold,
                ),
              ],
            ),
            const Gap(20),
            if (state.isLoading)
              const Expanded(
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              )
            else
              Expanded(
                child: GridView.builder(
                  itemCount: state.recipes.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) {
                    final Recipe recipe = state.recipes[index];
                    return RecipeCard(
                      recipe,
                      aspectRatio: 1,
                      showBottomRight: false,
                    );
                  },
                ),
              )
          ],
        ),
      ),
    );
  }
}
