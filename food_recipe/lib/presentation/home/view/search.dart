import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/presentation/home/home.dart';
import 'package:food_recipe/presentation/home/view/widget/widget.dart';
import 'package:food_recipe/ui/ui.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = getIt.get<SearchProvider>();

    return ListenableBuilder(
      listenable: provider,
      builder: (context, child) {
        final SearchState state = provider.state;
        return SearchScreenView(
          state: state,
          onChanged: (query) => provider.searchRecipes(query, state.filter),
          onFilterTap: () async {
            final Filter? filter = await showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SearchFilterButtonSheet(
                filter: state.filter,
              ),
            );

            if (filter != null) {
              provider.onFilterChange(filter);
            }
          },
        );
      },
    );
  }
}

class SearchScreenView extends StatelessWidget {
  final SearchState state;
  final void Function(String query)? onChanged;
  final VoidCallback onFilterTap;

  const SearchScreenView({
    super.key,
    required this.state,
    this.onChanged,
    required this.onFilterTap,
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
                GestureDetector(
                  onTap: onFilterTap,
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primary100),
                      child: const Icon(
                        Icons.tune_outlined,
                        color: AppColors.white,
                      )),
                )
              ],
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  state.searchQuery.isEmpty ? 'Recent Search' : 'Search Result',
                  style: TextStyles.normalTextBold,
                ),
                if (state.searchQuery.isNotEmpty)
                  Text(
                    '${state.recipes.length} results',
                    style: TextStyles.smallTextRegular.copyWith(
                      color: AppColors.gray3,
                    ),
                  )
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
