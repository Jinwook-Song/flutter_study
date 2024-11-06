import 'dart:math';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const double kCoreRefreshIndicatorSize = 56.0;

class CoreRefreshIndicator extends StatefulWidget {
  final Widget child;
  final Widget? indicator;
  final AsyncCallback onRefresh;
  final double displacement;
  final double edgeOffset;
  final bool enableRotation;

  const CoreRefreshIndicator({
    super.key,
    required this.child,
    this.indicator,
    required this.onRefresh,
    this.displacement = 40.0,
    this.edgeOffset = 0.0,
    this.enableRotation = true,
  });

  @override
  State<CoreRefreshIndicator> createState() => _CoreRefreshIndicatorState();
}

class _CoreRefreshIndicatorState extends State<CoreRefreshIndicator>
    with SingleTickerProviderStateMixin {
  final IndicatorController _controller = IndicatorController();

  late final AnimationController _animationController;
  final ValueNotifier<double> _ratioValueNotifier = ValueNotifier<double>(0.0);

  double get _indicatorSize =>
      widget.indicator != null ? kCoreRefreshIndicatorSize : 0.0;

  double get _displacement =>
      widget.indicator != null ? widget.displacement : 0.0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateState);

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _ratioValueNotifier.dispose();
    _controller.removeListener(_updateState);
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _updateState() {
    _ratioValueNotifier.value = _controller.value;

    if (!widget.enableRotation) return;

    if (_controller.state == IndicatorState.loading) {
      _animationController.repeat();
    } else {
      _animationController.stop();
      _animationController.reset();
    }
  }

  Widget _buildIndicator() {
    if (widget.indicator == null) return const SizedBox.shrink();

    if (!widget.enableRotation) return widget.indicator!;

    return RotationTransition(
      turns: _animationController.drive(Tween(begin: 0.0, end: -1.0)),
      child: widget.indicator!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      controller: _controller,
      indicatorBuilder: (context, controller) => _buildIndicator(),
      elevation: 0.0,
      displacement: _displacement,
      edgeOffset: widget.edgeOffset,
      backgroundColor: Colors.transparent,
      onRefresh: widget.onRefresh,
      child: ValueListenableBuilder<double>(
        valueListenable: _ratioValueNotifier,
        builder: (context, ratio, child) {
          final double topPadding = (_indicatorSize + _displacement) * ratio;
          return Padding(
            padding: EdgeInsets.only(top: max(0, topPadding)),
            child: child!,
          );
        },
        child: widget.child,
      ),
    );
  }
}
