import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary100),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            )
          ],
        ),
      ),
    );
  }
}
