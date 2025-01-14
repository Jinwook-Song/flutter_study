import 'package:flutter/material.dart';
import 'package:food_recipe/ui/ui.dart';
import 'package:gap/gap.dart';

class PrimaryButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  final double buttonHeight;
  final double buttonPadding;
  final bool hasIcon;
  final TextStyle textStyle;
  final Color buttonColor;

  const PrimaryButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.buttonHeight = 37,
      this.buttonPadding = 30,
      this.textStyle = TextStyles.smallTextBold,
      this.hasIcon = false,
      this.buttonColor = AppColors.primary100});

  factory PrimaryButton.big({
    required String text,
    required VoidCallback onTap,
  }) {
    return PrimaryButton(
      text: text,
      onTap: onTap,
      buttonHeight: 60,
      buttonPadding: 85,
      textStyle: TextStyles.normalTextBold,
      hasIcon: true,
    );
  }
  factory PrimaryButton.medium({
    required String text,
    required VoidCallback onTap,
  }) {
    return PrimaryButton(
      text: text,
      onTap: onTap,
      buttonHeight: 54,
      buttonPadding: 50,
      textStyle: TextStyles.normalTextBold,
      hasIcon: true,
    );
  }

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool _isPressed = false;

  Color get _buttonColor => _isPressed ? AppColors.gray4 : widget.buttonColor;

  void _handleTap(bool tapped) {
    setState(() {
      _isPressed = tapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _handleTap(true),
      onTapCancel: () => _handleTap(false),
      onTapUp: (_) => _handleTap(false),
      onTap: widget.onTap,
      behavior: HitTestBehavior.translucent,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        height: widget.buttonHeight,
        padding: EdgeInsets.symmetric(horizontal: widget.buttonPadding),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MaxGap(20),
            Text(
              widget.text,
              style: widget.textStyle.copyWith(
                color: AppColors.white,
              ),
            ),
            const MaxGap(20),
            if (widget.hasIcon) ...[
              const Gap(11),
              const Icon(
                Icons.arrow_forward,
                size: 20,
                color: AppColors.white,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
