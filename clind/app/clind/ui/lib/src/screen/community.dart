import 'package:core_flutter_bloc/flutter_bloc.dart';
import 'package:core_util/util.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:presentation/presentation.dart';
import 'package:tool_clind_component/component.dart';
import 'package:tool_clind_theme/theme.dart';

import 'package:ui/ui.dart';

enum CommunityTapType {
  normal(title: '홈'),
  popular(title: '인기');

  final String title;

  const CommunityTapType({required this.title});
}

extension CommunityTapTypeX on CommunityTapType {
  static int get count => CommunityTapType.values.length;
}

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen>
    with SingleTickerProviderStateMixin {
  late final PageController _pageController = PageController();
  late final TabController _tabController = TabController(
    length: CommunityTapTypeX.count,
    vsync: this,
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _refresh());
  }

  @override
  void dispose() {
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _updateTab(int index) {
    if (index == _tabController.index) return;
    _tabController.animateTo(index);
  }

  void _updatePage(int page) {
    if (page == _pageController.page) return;
    _pageController.animateToPage(
      page,
      duration: kTabScrollDuration,
      curve: Curves.ease,
    );
  }

  void _onChangedTab(int index) {
    _updateTab(index);
    _updatePage(index);
    _refresh();
  }

  Future<void> _refresh() async {
    final index = _tabController.index;
    if (index >= CommunityTapTypeX.count) return;
    final CommunityTapType type = CommunityTapType.values[index];
    switch (type) {
      case CommunityTapType.normal:
        await Future.wait([
          context.readFlowBloc<CommunityChannelListCubit>().load(),
          context.readFlowBloc<CommunityPostListCubit>().load(),
        ]);
      case CommunityTapType.popular:
        await Future.wait([
          context.readFlowBloc<CommunityPopularChannelListCubit>().load(),
          context.readFlowBloc<CommunityPoPularPostListCubit>().load(),
        ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.darkBlack,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: context.appBarTheme.backgroundColor,
              scrolledUnderElevation: 0,
              floating: true,
              snap: true,
              leading: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ClindIcon.logoSmall(),
                ),
              ),
              leadingWidth: 55,
              title: ClindSearchBar(text: '관심있는 글 검색', onTap: () {}),
              titleSpacing: 0,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(left: 6.5, right: 8.5),
                  child: ClindAppBarIconAction(
                    icon: ClindIcon.sms(
                      color: context.colorScheme.white,
                    ),
                  ),
                )
              ],
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(45),
                  child: CommunityTabBar(
                    controller: _tabController,
                    tabs: CommunityTapType.values
                        .map((tab) => tab.title)
                        .toList(),
                    onTap: _onChangedTab,
                  )),
            )
          ];
        },
        body: PageView.builder(
          controller: _pageController,
          itemCount: CommunityTapTypeX.count,
          onPageChanged: _onChangedTab,
          itemBuilder: (context, index) {
            final CommunityTapType type = CommunityTapType.values[index];
            return CoreRefreshIndicator(
              onRefresh: _refresh,
              indicator: ClindIcon.restartAlt(
                color: context.colorScheme.gray400,
              ),
              child: CoreLoadMore(
                onLoadMore: () async {},
                child: CustomScrollView(
                  key: PageStorageKey('$CommunityTapType$index'),
                  slivers: [
                    SliverToBoxAdapter(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, bottom: 9, right: 63),
                            child: SizedBox(
                              height: 33,
                              child: Builder(builder: (context) {
                                switch (type) {
                                  case CommunityTapType.normal:
                                    return FlowBlocBuilder<
                                        CommunityChannelListCubit,
                                        List<Channel>>.when(
                                      loading: (context, state) =>
                                          ListView.separated(
                                        itemCount: 10,
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) =>
                                            const SizedBox(width: 6),
                                        itemBuilder: (context, index) =>
                                            const ClindLoadingChannelChip(),
                                      ),
                                      orElse: (context, state) {
                                        final List<Channel> data =
                                            state.data ?? [];
                                        return ListView.separated(
                                          itemCount: data.length,
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(width: 6),
                                          itemBuilder: (context, index) =>
                                              CommunityChannelChip.item(
                                            data[index],
                                            onTap: () {},
                                          ),
                                        );
                                      },
                                    );
                                  case CommunityTapType.popular:
                                    return FlowBlocBuilder<
                                        CommunityPopularChannelListCubit,
                                        List<Channel>>.when(
                                      loading: (context, state) =>
                                          ListView.separated(
                                        itemCount: 10,
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) =>
                                            const SizedBox(
                                          width: 6,
                                        ),
                                        itemBuilder: (context, index) =>
                                            const ClindLoadingChannelChip(),
                                      ),
                                      orElse: (context, state) {
                                        final List<Channel> data =
                                            state.data ?? [];
                                        return ListView.separated(
                                          itemCount: data.length,
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(
                                            width: 6,
                                          ),
                                          itemBuilder: (context, index) =>
                                              CommunityChannelChip.item(
                                            data[index],
                                            onTap: () {},
                                          ),
                                        );
                                      },
                                    );
                                }
                              }),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            bottom: 0,
                            child: Builder(builder: (context) {
                              switch (type) {
                                case CommunityTapType.normal:
                                  return FlowBlocBuilder<
                                      CommunityChannelListCubit,
                                      List<Channel>>.when(
                                    loading: (context, state) =>
                                        const CommunityAllChannelButton(''),
                                    orElse: (context, state) =>
                                        CommunityAllChannelButton(
                                      '전체',
                                      onTap: () {},
                                    ),
                                  );
                                case CommunityTapType.popular:
                                  return FlowBlocBuilder<
                                      CommunityPopularChannelListCubit,
                                      List<Channel>>.when(
                                    loading: (context, state) =>
                                        const CommunityAllChannelButton(''),
                                    orElse: (context, state) =>
                                        CommunityAllChannelButton(
                                      '전체',
                                      onTap: () {},
                                    ),
                                  );
                              }
                            }),
                          )
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: ClindSortFilter(text: '최신순', onTap: () {}),
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 9)),
                    Builder(builder: (context) {
                      switch (type) {
                        case CommunityTapType.normal:
                          return FlowBlocBuilder<CommunityPostListCubit,
                              List<Post>>.when(
                            loading: (context, state) => SliverList.separated(
                              itemCount: 20,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 15),
                              itemBuilder: (context, index) =>
                                  const ClindLoadingPostCard(),
                            ),
                            orElse: (context, state) {
                              final List<Post> data = state.data ?? [];
                              return SliverList.separated(
                                itemCount: data.length,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 15),
                                itemBuilder: (context, index) =>
                                    CommunityPostCard.item(data[index],
                                        onChannelTapped: () {},
                                        onCompanyTapped: () {},
                                        onLikeTapped: () {},
                                        onCommentTapped: () {},
                                        onViewTapped: () {},
                                        onTap: () {}),
                              );
                            },
                          );
                        case CommunityTapType.popular:
                          return FlowBlocBuilder<CommunityPoPularPostListCubit,
                              List<Post>>.when(
                            loading: (context, state) => SliverList.separated(
                              itemCount: 20,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 15),
                              itemBuilder: (context, index) =>
                                  const ClindLoadingPostCard(),
                            ),
                            orElse: (context, state) {
                              final List<Post> data = state.data ?? [];
                              return SliverList.separated(
                                itemCount: data.length,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 15),
                                itemBuilder: (context, index) =>
                                    CommunityPostCard.item(data[index],
                                        onChannelTapped: () {},
                                        onCompanyTapped: () {},
                                        onLikeTapped: () {},
                                        onCommentTapped: () {},
                                        onViewTapped: () {},
                                        onTap: () {}),
                              );
                            },
                          );
                      }
                    }),
                    const SliverToBoxAdapter(child: SizedBox(height: 56 + 16))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
