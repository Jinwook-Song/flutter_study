import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/common/widget/w_animated_height_collapse.dart';
import 'package:fast_app_base/screen/main/fab/view_models/floating_danggn_button_view_model.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class FloatingDanggnButton extends ConsumerWidget {
  FloatingDanggnButton({super.key});

  final _duration = 300.ms;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final floatingButtonState = ref.watch(floatingButtonStateProvider);
    final isExpanded = floatingButtonState.isExpanded;
    final isSmall = floatingButtonState.isSmall;

    return Stack(
      children: [
        IgnorePointer(
          ignoring: !isExpanded,
          child: AnimatedContainer(
            duration: _duration,
            color:
                isExpanded ? Colors.black.withOpacity(0.4) : Colors.transparent,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AnimatedOpacity(
                opacity: isExpanded ? 1 : 0,
                duration: _duration,
                child: IgnorePointer(
                  ignoring: !isExpanded,
                  child: Container(
                    width: 160,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: context.appColors.floatingActionLayer,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _floatItem('알바', '$basePath/fab/fab_01.png'),
                        _floatItem('과외/클래스', '$basePath/fab/fab_02.png'),
                        _floatItem('농수산물', '$basePath/fab/fab_03.png'),
                        _floatItem('부동산', '$basePath/fab/fab_04.png'),
                        _floatItem('중고차', '$basePath/fab/fab_05.png'),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap:
                    ref.read(floatingButtonStateProvider.notifier).onTapButton,
                child: AnimatedContainer(
                  duration: _duration,
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    color: isExpanded
                        ? context.appColors.floatingActionLayer
                        : const Color(0xffff791f),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedRotation(
                        turns: isExpanded ? 1 / 8 : 0,
                        duration: _duration,
                        child: const Icon(Icons.add),
                      ),
                      AnimatedWidthCollapse(
                        visible: !isSmall,
                        duration: _duration,
                        child: '글쓰기'.text.make(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ).pOnly(
            bottom: MainScreenState.bottomNavigationBarHeight +
                context.viewPaddingBottom / 2,
            right: 20,
          ),
        ),
      ],
    );
  }

  _floatItem(String title, String imagePath) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          width: 30,
        ),
        const Gap(8),
        title.text.make(),
      ],
    );
  }
}
