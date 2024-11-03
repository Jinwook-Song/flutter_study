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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Clind'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ClindCardButton.like(
                  context,
                  count: 4,
                  isSelected: true,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: ClindCardButton.comment(
                  context,
                  count: 1000,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: ClindCardButton.view(
                  context,
                  count: 999999999,
                  onTap: () {},
                ),
              ),
            ],
          ),
          const ClindLoadingPostCard(),
          ClindChannelChip(
            imageUrl: 'https://avatars.githubusercontent.com/u/78011042?v=4',
            name: 'jw',
            onTap: () {},
          ),
          ClindDivider.horizontal(),
          ClindIcon.mail(color: context.colorScheme.white),
          const ClindProfileImage(imageUrl: ''),
          ClindSettingTile.simple(context, title: 'title', onTap: () {}),
          ClindSettingTile.icon(context,
              icon: ClindIcon.cancel(), title: 'test', onTap: () {})
        ],
      ),
      bottomNavigationBar: ClindBottomNavigationBar(
        items: [
          ClindBottomNavigationItem.home(),
          ClindBottomNavigationItem.notification(),
          ClindBottomNavigationItem.my(),
        ],
        currentIndex: 2,
        onTap: (index) {},
      ),
    );
  }
}
