import 'package:flutter/material.dart';
import 'package:wabiz/core/core.dart';

class CategoryBanner extends StatelessWidget {
  const CategoryBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 204,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: AppColors.wabizGray.shade800),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '최고의 이어폰 | 전문가가 만든 완벽한 이어폰',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.white,
              ),
            ),
            Gap(12),
            Text(
              '전문가가 만든 이어폰 전문가가 만든 이어폰 전문가가 만든 이어폰 전문가가 만든 이어폰 ',
              style: TextStyle(color: AppColors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Gap(16),
            Container(
              width: 120,
              height: 4,
              decoration: BoxDecoration(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
