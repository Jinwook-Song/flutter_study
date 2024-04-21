import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/fab/view_models/floating_danggn_button_view_model.dart';
import 'package:fast_app_base/screen/main/fab/w_floating_danggn_button.dart';
import 'package:fast_app_base/screen/main/tab/home/w_product_post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({super.key});

  @override
  ConsumerState<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {
  final ScrollController _scrollController = ScrollController();
  String title = '플러터동';

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
    return Column(
      children: [
        AppBar(
          centerTitle: false,
          title: PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                title = value;
              });
            },
            itemBuilder: (context) => ['플러터', '다트']
                .map(
                  (e) => PopupMenuItem(
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList(),
            child: Text(title),
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.only(bottom: FloatingDanggnButton.height),
            controller: _scrollController,
            itemCount: postList.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) => ProductPostItem(postList[index]),
          ),
        ),
      ],
    );
  }
}
