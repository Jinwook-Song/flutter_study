import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wabiz/core/colors.dart';
import 'package:wabiz/views/home/widget/category_list.dart';
import 'package:wabiz/views/home/widget/home_card_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: AppColors.white,
              height: 324,
              child: Column(
                children: [
                  const SearchBar(),
                  const CategoryList(),
                  Container(
                    width: 48,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColors.bg,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const Gap(12),
                ],
              ),
            ),
            const HomeCardList(),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}