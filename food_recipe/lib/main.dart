import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/core/presentation/dialog/rating_dialog.dart';
import 'package:food_recipe/data/repository/repository.dart';
import 'package:food_recipe/domain/domain.dart';
import 'package:food_recipe/presentation/presentation.dart';
import 'package:food_recipe/ui/ui.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.white,
      ),
      home: FutureBuilder(
        future: GetSavedRecipesUseCase(
          recipeRepository: MockRecipeRepositoryImpl(),
          bookmarkRepository: MockBookmarkRepositoryImpl(),
        ).execute(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          }
          return SavedRecipesScreen(recipes: snapshot.requireData);
        },
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Components',
          style: TextStyles.largeTextBold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => RatingDialog(
                    title: 'Rate recipe',
                    rating: 3,
                    submit: 'Send',
                    disabled: false,
                    onChange: (rating) {
                      debugPrint('$rating');
                      Navigator.of(context).pop();
                    },
                  ),
                );
              },
              child: const Text('Rating'),
            ),
            PrimaryButton.big(
              text: 'Big Button',
              onTap: () {},
            ),
            const Gap(8),
            PrimaryButton.medium(
              text: 'Medium Button',
              onTap: () {},
            ),
            const Gap(8),
            PrimaryButton(
              text: 'Button',
              onTap: () {},
            ),
            const Gap(8),
            const InputField(
              label: 'label',
              placeholder: 'placeholder',
            ),
            const Gap(8),
            const FilterButton('Text'),
            const Gap(8),
            const FilterButton(
              '5',
              icon: Icons.star,
              selected: true,
            ),
            const Gap(8),
            const CustomTabBar(
              labels: ['label1', 'label2'],
            )
          ],
        ),
      ),
    );
  }
}
