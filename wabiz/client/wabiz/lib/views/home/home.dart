import 'package:flutter/material.dart';
import 'package:wabiz/core/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: 100,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return ColoredBox(color: AppColors.bg, child: Text('Item $index'));
          },
        ),
      ),
    );
  }
}
