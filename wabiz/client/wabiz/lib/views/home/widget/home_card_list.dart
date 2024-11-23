import 'package:flutter/material.dart';
import 'package:wabiz/core/core.dart';
import 'package:wabiz/models/models.dart';
import 'package:wabiz/view_models/home/home.dart';

class HomeCardList extends StatelessWidget {
  const HomeCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer(
        builder: (context, ref, child) {
          return ref.watch(fetchHomeProjectProvider).when(
                loading: () => Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                error: (error, stackTrace) => Center(
                  child: Text(error.toString()),
                ),
                data: (data) {
                  return ListView.separated(
                    itemCount: data.projects.length + 1,
                    separatorBuilder: (context, index) => const Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                    itemBuilder: (context, index) {
                      if (index == 0) return const SizedBox.shrink();
                      final homeItem = data.projects[index - 1];
                      return HomeCard(homeItem);
                    },
                  );
                },
              );
        },
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final HomeItemModel homeItem;

  const HomeCard(this.homeItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 8),
              color: AppColors.black.withOpacity(.1),
              blurRadius: 30,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                color: AppColors.wabizGray,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(homeItem.thumbnail ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    homeItem.isOpen == 'open'
                        ? '${homeItem.totalFundedCount!.formatNumber()}명이 인증했어요'
                        : '${homeItem.waitlistCount!.formatNumber()}명이 기다려요',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                  ),
                  const Gap(8),
                  Text(homeItem.title ?? ''),
                  const Gap(16),
                  Text(
                    homeItem.owner ?? '',
                    style: TextStyle(
                      color: AppColors.wabizGray.shade500,
                    ),
                  ),
                  const Gap(16),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.bg,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Text(
                      homeItem.isOpen == 'open' ? '바로구매' : '오픈예정',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
