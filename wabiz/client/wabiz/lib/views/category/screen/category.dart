import 'package:flutter/material.dart';
import 'package:wabiz/core/core.dart';
import 'package:wabiz/views/category/widget/category_banner.dart';
import 'package:wabiz/views/category/widget/category_tab_list.dart';

class CategoryScreen extends StatefulWidget {
  final String id;
  const CategoryScreen(this.id, {super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text('카테고리'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/home_outlined.svg',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          CategoryBanner(),
          CategoryTabList(),
          Divider(height: 0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        DropdownButton(
                          items: [DropdownMenuItem(child: Text('전체'))],
                          onChanged: (value) {},
                          icon: Icon(Icons.keyboard_arrow_down),
                          underline: SizedBox.shrink(),
                        ),
                        Gap(24),
                        DropdownButton(
                          items: [DropdownMenuItem(child: Text('추천수'))],
                          onChanged: (value) {},
                          icon: Icon(Icons.keyboard_arrow_down),
                          underline: SizedBox.shrink(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 24),
                            child: Row(
                              children: [
                                Container(
                                  width: 164,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.primary,
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 2,
                                        right: 2,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.favorite_border),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Gap(16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '[내 손안의 와이파이] 6G 라우터로 어디서든 빠르게',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Gap(8),
                                      Text(
                                        '홍길동',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.wabizGray.shade500,
                                        ),
                                      ),
                                      Gap(8),
                                      Text(
                                        '1,000명 참여',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.primary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Gap(8),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 6,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.bg,
                                        ),
                                        child: Text(
                                          '1,000원',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
