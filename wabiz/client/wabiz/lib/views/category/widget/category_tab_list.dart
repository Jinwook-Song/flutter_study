import 'package:flutter/material.dart';
import 'package:wabiz/core/core.dart';

class CategoryTabList extends StatelessWidget {
  const CategoryTabList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.only(left: 8, right: 8, top: 16),
      decoration: BoxDecoration(color: AppColors.wabizGray),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 32),
            child: IntrinsicWidth(
              child: Column(
                children: [
                  Gap(8),
                  CircleAvatar(radius: 16),
                  Gap(12),
                  Text('테크'),
                  Gap(12),
                  Container(
                    height: 6,
                    color: AppColors.black,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
