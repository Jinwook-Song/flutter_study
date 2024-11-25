import 'package:flutter/material.dart';
import 'package:wabiz/core/core.dart';
import 'package:wabiz/views/category/widget/category_banner.dart';
import 'package:wabiz/views/category/widget/category_project_list.dart';
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
          CategoryProjectList(),
        ],
      ),
    );
  }
}
