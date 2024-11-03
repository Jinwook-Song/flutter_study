import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tool_clind_theme/gen/gen.dart';
import 'package:tool_clind_theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Clind'),
      ),
      backgroundColor: context.colorScheme.bg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: context.colorScheme.gray100,
          ),
          Container(
            height: 100,
            color: context.colorScheme.bg2,
          ),
          Container(
            height: 100,
            color: context.colorScheme.black,
          ),
          Container(
            height: 100,
            color: ColorName.mainRed,
          ),
        ],
      ),
    );
  }
}
