import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'poppins30Bold',
            style: context.textTheme.poppins30Bold,
          ),
          Text(
            'poppins18Bold',
            style: context.textTheme.poppins18Bold,
          ),
          Text(
            'default22Regular',
            style: context.textTheme.default22Regular,
          ),
          Text(
            'default17SemiBold',
            style: context.textTheme.default17SemiBold,
          ),
          Text(
            'default17Medium',
            style: context.textTheme.default17Medium,
          ),
          Text(
            'default17Regular',
            style: context.textTheme.default17Regular,
          ),
          Text(
            'default17Regular',
            style:
                context.textTheme.default12Medium.copyWith(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
