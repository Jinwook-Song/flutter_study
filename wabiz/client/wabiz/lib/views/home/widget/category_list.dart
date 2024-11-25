import 'package:flutter/material.dart';
import 'package:wabiz/core/core.dart';
import 'package:wabiz/models/models.dart';
import 'package:wabiz/view_models/home/home.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer(
        builder: (context, ref, child) {
          return ref.watch(fetchHomeCategoriesProvider).when(
                loading: () => Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                error: (error, stackTrace) => Center(
                  child: Text(error.toString()),
                ),
                data: (data) {
                  return GridView.builder(
                    padding: EdgeInsets.only(left: 16, bottom: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 12,
                    ),
                    itemBuilder: (context, index) {
                      final ProjectCategory category = data[index];
                      return GestureDetector(
                        onTap: () => context.pushNamed(
                          AppRoutes.category.name,
                          pathParameters: {
                            'id': category.id!.toString(),
                          },
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 38,
                              backgroundColor: AppColors.bg,
                              child: Image.asset(
                                category.iconPath!,
                                width: 42,
                                height: 42,
                              ),
                            ),
                            Gap(4),
                            Text(category.title!),
                          ],
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
