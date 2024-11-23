import 'package:flutter/material.dart';
import 'package:wabiz/core/core.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 12,
        ),
        itemBuilder: (context, index) => const InkWell(
          child: Column(
            children: [
              CircleAvatar(
                radius: 38,
                backgroundColor: AppColors.bg,
              ),
              Gap(4),
              Text('펀딩+'),
            ],
          ),
        ),
      ),
    );
  }
}
