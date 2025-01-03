import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/ui/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: router,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.white,
      ),
    );
  }
}

class UiTestScreen extends StatefulWidget {
  const UiTestScreen({super.key});

  @override
  State<UiTestScreen> createState() => _UiTestScreenState();
}

class _UiTestScreenState extends State<UiTestScreen>
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
            const SearchInputField(placeholder: 'placeholder'),
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
