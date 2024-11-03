import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tool_clind_component/component.dart';
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
      backgroundColor: context.colorScheme.black,
      appBar: ClindAppBar(
        context: context,
        title: ClindSearchTextField(onSearch: (String text) {}),
      ),
      body: Column(
        children: [
          ClindSearchBar(text: '', onTap: () {}),
          const ClindLoadingSearchBar(),
          ClindSortFilter(
            text: '최신순',
            onTap: () {},
          )
        ],
      ),
      floatingActionButton: ClindWriteButton(onTap: () {
        ClindDialog.showConfirm(context, title: 'test', onConfirm: () {});
      }),
      bottomNavigationBar:
          ClindChatBottomNavigationBar(onSend: (String text) {}),
    );
  }
}
