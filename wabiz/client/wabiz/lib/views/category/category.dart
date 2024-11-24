import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text('Category ${widget.id}'),
      ),
    );
  }
}
