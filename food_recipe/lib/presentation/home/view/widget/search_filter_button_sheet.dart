import 'package:flutter/material.dart';
import 'package:food_recipe/core/core.dart';
import 'package:food_recipe/domain/model/filter.dart';
import 'package:food_recipe/ui/ui.dart';

class SearchFilterButtonSheet extends StatefulWidget {
  final Filter filter;
  const SearchFilterButtonSheet({super.key, required this.filter});

  @override
  State<SearchFilterButtonSheet> createState() =>
      _SearchFilterButtonSheetState();
}

class _SearchFilterButtonSheetState extends State<SearchFilterButtonSheet> {
  late Filter _filter = widget.filter;

  void _onFilterTap({
    required FilterType type,
    required dynamic value,
  }) {
    switch (type) {
      case FilterType.time:
        _filter = _filter.copyWith(time: value);
        break;
      case FilterType.rate:
        _filter = _filter.copyWith(rate: value);
        break;
      case FilterType.category:
        _filter = _filter.copyWith(category: value);
        break;
    }

    setState(() {});
  }

  void _onFilterUpdate() {
    Navigator.of(context).pop(_filter);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(30),
            const Center(
              child: Text(
                'Filter Search',
                textAlign: TextAlign.center,
                style: TextStyles.smallTextBold,
              ),
            ),
            const Gap(20),
            const Text(
              'Time',
              style: TextStyles.smallTextBold,
            ),
            const Gap(20),
            Wrap(
              spacing: 15,
              runSpacing: 10,
              children: TimeFilter.values.expand(
                (element) {
                  return [
                    GestureDetector(
                      onTap: () => _onFilterTap(
                        type: FilterType.time,
                        value: element,
                      ),
                      child: FilterButton(
                        element.name.toCapitalize(),
                        selected: _filter.time == element,
                      ),
                    ),
                  ];
                },
              ).toList(),
            ),
            const Gap(20),
            const Text(
              'Rate',
              style: TextStyles.smallTextBold,
            ),
            const Gap(20),
            Wrap(
              spacing: 15,
              runSpacing: 10,
              children: [5, 4, 3, 2, 1].expand(
                (element) {
                  return [
                    GestureDetector(
                      onTap: () => _onFilterTap(
                        type: FilterType.rate,
                        value: element,
                      ),
                      child: FilterButton(
                        '$element',
                        icon: Icons.star,
                        selected: _filter.rate == element,
                      ),
                    ),
                  ];
                },
              ).toList(),
            ),
            const Gap(20),
            const Text(
              'Category',
              style: TextStyles.smallTextBold,
            ),
            const Gap(20),
            Wrap(
              spacing: 15,
              runSpacing: 10,
              children: CategoryFilter.values.expand(
                (element) {
                  return [
                    GestureDetector(
                      onTap: () => _onFilterTap(
                        type: FilterType.category,
                        value: element,
                      ),
                      child: FilterButton(
                        element.name.toCapitalize(),
                        selected: _filter.category == element,
                      ),
                    ),
                  ];
                },
              ).toList(),
            ),
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryButton(
                  text: 'Filter',
                  onTap: _onFilterUpdate,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
