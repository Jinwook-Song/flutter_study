import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wabiz/core/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(
          color: AppColors.white,
          height: 324,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: TextFormField(
                          onTap: () {
                            // TODO:
                          },
                          decoration: InputDecoration(
                            hintText: '새로운 일상이 필요하신가요?',
                            suffixIcon: const Icon(Icons.search),
                            suffixIconColor: AppColors.wabizGray.shade400,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: AppColors.wabizGray.shade100,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: AppColors.wabizGray.shade100,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none))
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) => const InkWell(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 38,
                          backgroundColor: AppColors.bg,
                        ),
                        Gap(4),
                        Text('펀딩+')
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 4,
                decoration: BoxDecoration(
                    color: AppColors.bg,
                    borderRadius: BorderRadius.circular(2)),
              ),
              const Gap(12),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 10,
            separatorBuilder: (context, index) => const Divider(
              height: 20,
              color: Colors.transparent,
            ),
            itemBuilder: (context, index) {
              if (index == 0) return const SizedBox.shrink();
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
                        decoration: const BoxDecoration(
                            color: AppColors.wabizGray,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '123122명이 기다려요',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primary,
                              ),
                            ),
                            const Gap(8),
                            const Text('아이돌 관리비법 '),
                            const Gap(16),
                            Text(
                              '세상에 없던 브랜드',
                              style: TextStyle(
                                color: AppColors.wabizGray.shade500,
                              ),
                            ),
                            const Gap(16),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 4),
                              decoration: BoxDecoration(
                                color: AppColors.bg,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: const Text(
                                '오픈예정',
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const Gap(20)
      ],
    )));
  }
}
