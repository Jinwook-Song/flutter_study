import 'package:fast_app_base/screen/main/fab/view_models/floating_danggn_button_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({super.key});

  @override
  ConsumerState<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final isSmall = ref.read(floatingButtonStateProvider).isSmall;

      if (_scrollController.position.pixels > 100 && !isSmall) {
        ref.read(floatingButtonStateProvider.notifier).changeSmallSize(true);
      } else if (_scrollController.position.pixels < 100 && isSmall) {
        ref.read(floatingButtonStateProvider.notifier).changeSmallSize(false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      children: [
        Container(
          height: 400,
          color: Colors.red,
        ),
        Container(
          height: 400,
          color: Colors.black,
        ),
        Container(
          height: 400,
          color: Colors.red,
        ),
        Container(
          height: 400,
          color: Colors.blue,
        ),
      ],
    );
  }
}
