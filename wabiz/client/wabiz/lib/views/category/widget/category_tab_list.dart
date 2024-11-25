import 'package:flutter/material.dart';
import 'package:wabiz/core/core.dart';
import 'package:wabiz/models/category/category_state.dart';
import 'package:wabiz/models/models.dart';
import 'package:wabiz/view_models/view_models.dart';

class CategoryTabList extends StatelessWidget {
  const CategoryTabList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.only(left: 8, right: 8, top: 16),
      decoration: BoxDecoration(color: AppColors.white),
      child: Consumer(
        builder: (context, ref, child) {
          final CategoryScreenState categoryScreenState =
              ref.watch(categoryViewModelProvider);
          return ref.watch(fetchTypeTabsProvider).when(
                loading: () => Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                error: (error, stackTrace) => Center(
                  child: Text(error.toString()),
                ),
                data: (data) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final ProjectType category = data[index];
                      return GestureDetector(
                        onTap: () {
                          ref
                              .read(categoryViewModelProvider.notifier)
                              .updateType(category);

                          // TODO: type에 만든 project list 가져오기
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: IntrinsicWidth(
                            child: Column(
                              children: [
                                Gap(8),
                                SvgPicture.asset(
                                  category.imagePath ?? '',
                                  width: 32,
                                  height: 32,
                                ),
                                Gap(12),
                                Text(
                                  category.type ?? '',
                                  style: TextStyle(
                                    fontWeight:
                                        categoryScreenState.selectedType ==
                                                category
                                            ? FontWeight.bold
                                            : null,
                                  ),
                                ),
                                Gap(12),
                                Container(
                                  height: 6,
                                  color: categoryScreenState.selectedType ==
                                          category
                                      ? AppColors.black
                                      : null,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              );
        },
      ),
    );
  }
}
