import 'package:fast_app_base/screen/main/fab/view_models/floating_danggn_button_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocalLifeFragment extends ConsumerStatefulWidget {
  const LocalLifeFragment({super.key});

  @override
  ConsumerState<LocalLifeFragment> createState() => LocalLifeFragmentState();
}

class LocalLifeFragmentState extends ConsumerState<LocalLifeFragment> {
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
          color: Colors.amber,
        ),
        Container(
          height: 400,
          color: Colors.green,
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
