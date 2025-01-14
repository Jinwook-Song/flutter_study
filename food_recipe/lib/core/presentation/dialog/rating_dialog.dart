import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/ui/ui.dart';

class RatingDialog extends StatefulWidget {
  final String title;
  final int rating;
  final String submit;
  final void Function(int rating) onChange;
  final bool disabled;
  const RatingDialog({
    super.key,
    required this.title,
    required this.rating,
    required this.submit,
    required this.onChange,
    this.disabled = true,
  });

  @override
  State<RatingDialog> createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  late int _rating = widget.rating;

  Color get _submitBg => widget.disabled ? AppColors.gray4 : AppColors.rating;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 80),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                widget.title,
                style: TextStyles.normalTextRegular,
              ),
            ),
            const Gap(10),
            RatingBar(
              _rating,
              onChange: (rating) {
                setState(() {
                  _rating = rating;
                });
              },
            ),
            const Gap(10),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 100),
              child: PrimaryButton(
                text: widget.submit,
                buttonColor: _submitBg,
                textStyle: TextStyles.smallTextRegular
                    .copyWith(color: AppColors.white),
                onTap: () {
                  widget.onChange(_rating);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  final int rating;
  final void Function(int rating) onChange;

  const RatingBar(
    this.rating, {
    super.key,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(10),
          for (final i in [1, 2, 3, 4, 5]) ...[
            GestureDetector(
              onTapDown: (details) {
                onChange(i);
              },
              child: Icon(
                rating >= i ? Icons.star : Icons.star_border,
                size: 30,
                color: AppColors.rating,
              ),
            ),
            const Gap(10),
          ],
        ],
      ),
    );
  }
}
