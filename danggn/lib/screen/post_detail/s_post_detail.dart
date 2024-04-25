import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PostDetailScreen extends HookWidget {
  const PostDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: context.deviceWidth,
                child: Stack(
                  children: [
                    PageView(
                      controller: pageController,
                      children: [
                        for (var id in [10, 214, 80, 75])
                          CachedNetworkImage(
                            imageUrl: 'https://picsum.photos/id/$id/200/200',
                            fit: BoxFit.fill,
                          ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: 4,
                        effect: const JumpingDotEffect(
                          verticalOffset: 8,
                          dotColor: Colors.white54,
                          activeDotColor: Colors.black45,
                        ),
                        onDotClicked: (index) {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60 + context.statusBarHeight,
          child: AppBar(
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: Colors.white),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
                color: Colors.white,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}
