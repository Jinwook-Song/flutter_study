import 'package:flutter/material.dart';
import 'package:tool_clind_theme/gen/gen.dart';
import 'package:tool_clind_theme/theme.dart';

class CommunityAllChannelButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const CommunityAllChannelButton(this.text, {super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: SizedBox(
        width: 63,
        child: ColoredBox(
          color: context.colorScheme.darkBlack,
          child: Center(
            child: Text(
              text,
              style: context.textTheme.default14Medium
                  .copyWith(color: ColorName.blue),
            ),
          ),
        ),
      ),
    );
  }
}
