import 'package:flutter/material.dart';

class AnimatedWidthCollapse extends StatelessWidget {
  const AnimatedWidthCollapse({
    super.key,
    required this.visible,
    required this.child,
    required this.duration,
  });
  final bool visible;
  final Widget child;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: duration,
      child: Container(
        constraints: visible
            ? const BoxConstraints()
            : const BoxConstraints(
                maxHeight: 0.0,
              ),
        child: visible ? child : Container(),
      ),
    );
  }
}
