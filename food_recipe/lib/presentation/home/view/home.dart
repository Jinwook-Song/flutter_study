import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/presentation/home/view/widget/dish_card.dart';
import 'package:food_recipe/presentation/home/view/widget/new_recipe_card.dart';
import 'package:food_recipe/presentation/presentation.dart';
import 'package:food_recipe/ui/ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = getIt.get<HomeProvider>();

    return ListenableBuilder(
      listenable: provider,
      builder: (context, child) {
        return HomeView(
          state: provider.state,
          onSearchTap: () => context.pushNamed(Routes.search.name),
          onSelectCategory: provider.onSelectCategory,
        );
      },
    );
  }
}

class HomeView extends StatefulWidget {
  final HomeState state;
  final VoidCallback onSearchTap;
  final void Function(RecipeCategory category) onSelectCategory;
  const HomeView({
    super.key,
    required this.onSearchTap,
    required this.state,
    required this.onSelectCategory,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late final TabController _controller = TabController(
    length: widget.state.categories.length,
    vsync: this,
  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(
      () {
        if (!_controller.indexIsChanging) {
          widget.onSelectCategory(RecipeCategory.values[_controller.index]);
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hello Jega',
                            style: TextStyles.largeTextBold,
                          ),
                          const Gap(5),
                          Text(
                            'What are you cooking today?',
                            style: TextStyles.smallerTextRegular.copyWith(
                              color: AppColors.gray3,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.secondary40),
                        child: Image.asset(
                          'assets/images/profile.png',
                        ),
                      )
                    ],
                  ),
                  const Gap(30),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: widget.onSearchTap,
                          child: const SearchInputField(
                            placeholder: 'Search recipe',
                            readOnly: true,
                          ),
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
                  const Gap(15),
                ],
              ),
            ),
            const Gap(10),
            Row(
              children: [
                Expanded(
                  child: CustomTabBar(
                    controller: _controller,
                    labels: widget.state.categories.map((e) => e.name).toList(),
                  ),
                ),
              ],
            ),
            const Gap(25),
            if (widget.state.isLoading)
              const SizedBox(
                width: double.infinity,
                height: 176 + 55,
                child: CircularProgressIndicator.adaptive(),
              )
            else
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Gap(30),
                    for (final dish in widget.state.dishes) ...[
                      DishCard(dish: dish, isBookmarked: true),
                      const Gap(15)
                    ],
                    const Gap(15)
                  ],
                ),
              ),
            const Gap(20),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text('New Recipes', style: TextStyles.normalTextBold),
            ),
            const Gap(5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  for (final recipe in widget.state.newRecipes) ...[
                    NewRecipeCard(recipe: recipe),
                    const Gap(15),
                  ],
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
