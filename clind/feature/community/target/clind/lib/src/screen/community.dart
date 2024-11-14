import 'dart:async';

import 'package:core_flutter_bloc/flutter_bloc.dart';
import 'package:core_util/util.dart';
import 'package:community_domain/domain.dart';
import 'package:feature_search/clind.dart';
import 'package:flutter/material.dart';
import 'package:community_presentation/presentation.dart';
import 'package:presentation/presentation.dart';
import 'package:tool_clind_component/component.dart';
import 'package:tool_clind_theme/theme.dart';

import 'package:feature_community/clind.dart';

enum CommunityTabType {
  normal(title: '홈'),
  popular(title: '인기');

  final String title;

  const CommunityTabType({required this.title});
}

extension CommunityTabTypeX on CommunityTabType {
  static int get count => CommunityTabType.values.length;
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
    length: CommunityTabTypeX.count,
    vsync: this,
  );

  StreamSubscription<int>? _homeNestedTabSubscription;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _subscribeHomeNestedTab();
      _refresh();
    });
  }

  @override
  void dispose() {
    _unsubscribeHomeNestedTab();
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _subscribeHomeNestedTab() {
    _homeNestedTabSubscription = context
        .readFlowBloc<HomeNestedTabCubit>()
        .stream
        .map((e) => e.data ?? 0)
        .listen(
      (index) {
        _onChangedTab(index);
      },
    );
  }

  void _unsubscribeHomeNestedTab() {
    _homeNestedTabSubscription?.cancel();
    _homeNestedTabSubscription = null;
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

  Future<void> _refresh({bool forceUpdate = true}) async {
    final index = _tabController.index;
    if (index >= CommunityTabTypeX.count) return;
    final CommunityTabType type = CommunityTabType.values[index];
    switch (type) {
      case CommunityTabType.normal:
        await Future.wait([
          context
              .readFlowBloc<CommunityChannelListCubit>()
              .load(forceUpdate: forceUpdate),
          context
              .readFlowBloc<CommunityPostListCubit>()
              .load(forceUpdate: forceUpdate),
        ]);
      case CommunityTabType.popular:
        await Future.wait([
          context
              .readFlowBloc<CommunityPopularChannelListCubit>()
              .load(forceUpdate: forceUpdate),
          context
              .readFlowBloc<CommunityPoPularPostListCubit>()
              .load(forceUpdate: forceUpdate),
        ]);
    }
  }

  Future<void> _loadMore() async {
    final int index = _tabController.index;
    if (index >= CommunityTabType.values.length) return;
    final CommunityTabType type = CommunityTabType.values[index];
    switch (type) {
      case CommunityTabType.normal:
        await context.readFlowBloc<CommunityPostListCubit>().loadMore();
      case CommunityTabType.popular:
        await context.readFlowBloc<CommunityPoPularPostListCubit>().loadMore();
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
              title: ClindSearchBar(
                  text: '관심있는 글 검색',
                  onTap: () => ISearchRouteTo.search(context)),
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
                  tabs:
                      CommunityTabType.values.map((tab) => tab.title).toList(),
                  onTap: _onChangedTab,
                ),
              ),
            )
          ];
        },
        body: PageView.builder(
          controller: _pageController,
          itemCount: CommunityTabTypeX.count,
          onPageChanged: _onChangedTab,
          itemBuilder: (context, index) {
            final CommunityTabType type = CommunityTabType.values[index];
            return CoreRefreshIndicator(
              onRefresh: () => _refresh(forceUpdate: false),
              indicator: ClindIcon.restartAlt(
                color: context.colorScheme.gray400,
              ),
              child: CoreLoadMore(
                onLoadMore: _loadMore,
                child: CustomScrollView(
                  key: PageStorageKey('$CommunityTabType$index'),
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
                                  case CommunityTabType.normal:
                                    return FlowBlocBuilder<
                                        CommunityChannelListCubit,
                                        List<Channel>>.when(
                                      loading: (context, state) =>
                                          const CommunityLoadingChannelListView(),
                                      orElse: (context, state) {
                                        final items = state.data ?? [];
                                        return CommunityChannelListView(
                                            items: items, onTap: (item) {});
                                      },
                                    );
                                  case CommunityTabType.popular:
                                    return FlowBlocBuilder<
                                        CommunityPopularChannelListCubit,
                                        List<Channel>>.when(
                                      loading: (context, state) =>
                                          const CommunityLoadingChannelListView(),
                                      orElse: (context, state) {
                                        final items = state.data ?? [];
                                        return CommunityChannelListView(
                                            items: items, onTap: (item) {});
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
                                case CommunityTabType.normal:
                                  return FlowBlocBuilder<
                                      CommunityChannelListCubit,
                                      List<Channel>>.when(
                                    loading: (context, state) =>
                                        const CommunityLoadingAllChannelButton(),
                                    orElse: (context, state) =>
                                        CommunityAllChannelButton(
                                      onTap: () {},
                                    ),
                                  );
                                case CommunityTabType.popular:
                                  return FlowBlocBuilder<
                                      CommunityPopularChannelListCubit,
                                      List<Channel>>.when(
                                    loading: (context, state) =>
                                        const CommunityLoadingAllChannelButton(),
                                    orElse: (context, state) =>
                                        CommunityAllChannelButton(
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
                        case CommunityTabType.normal:
                          return FlowBlocBuilder<CommunityPostListCubit,
                              List<Post>>.when(
                            loading: (context, state) =>
                                const CommunityLoadingPostCardListView(),
                            orElse: (context, state) {
                              final List<Post> items = state.data ?? [];
                              return CommunityPostCardListView(
                                items: items,
                                onChannelTapped: (item) {},
                                onCompanyTapped: (item) {},
                                onLikeTapped: (item) {},
                                onCommentTapped: (item) {},
                                onViewTapped: (item) {},
                                onTap: (item) {
                                  ICommunityRouteTo.post(context, id: item.id);
                                },
                                isLoadMore: state is LoadMoreState,
                              );
                            },
                          );
                        case CommunityTabType.popular:
                          return FlowBlocBuilder<CommunityPoPularPostListCubit,
                              List<Post>>.when(
                            loading: (context, state) =>
                                const CommunityLoadingPostCardListView(),
                            orElse: (context, state) {
                              final List<Post> items = state.data ?? [];
                              return CommunityPostCardListView(
                                items: items,
                                onChannelTapped: (item) {},
                                onCompanyTapped: (item) {},
                                onLikeTapped: (item) {},
                                onCommentTapped: (item) {},
                                onViewTapped: (item) {},
                                onTap: (item) {
                                  ICommunityRouteTo.post(context, id: item.id);
                                },
                                isLoadMore: state is LoadMoreState,
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
