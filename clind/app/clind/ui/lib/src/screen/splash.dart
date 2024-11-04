import 'package:di/di.dart';
import 'package:flutter/material.dart';
import 'package:presentation/presentation.dart';
import 'package:tool_clind_component/component.dart';
import 'package:tool_clind_theme/gen/gen.dart';
import 'package:tool_clind_theme/theme.dart';
import 'package:core_flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  static Future<void> show(BuildContext context) {
    return showGeneralDialog<void>(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) =>
          const SplashBlocProvider(child: SplashScreen()),
      barrierColor: Colors.transparent,
      transitionDuration: Duration.zero,
    );
  }
}

class _SplashScreenState extends State<SplashScreen> {
  final ValueNotifier<double> _opacityNotifier = ValueNotifier<double>(1.0);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.readFlowBloc<AdCubit>().load();
    });
  }

  @override
  void dispose() {
    _opacityNotifier.dispose();
    super.dispose();
  }

  Future<void> _hideAfterDelay(Duration delay) async {
    await Future.delayed(delay);
    _updateOpacity(0.0);
  }

  void _updateOpacity(double value) {
    if (_opacityNotifier.value == value) return;
    _opacityNotifier.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<double>(
      valueListenable: _opacityNotifier,
      builder: (context, value, child) => AnimatedOpacity(
        opacity: value,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        onEnd: () {
          if (value == 0.0) {
            Navigator.of(context).pop();
          }
        },
        child: child,
      ),
      child: Scaffold(
        backgroundColor: ColorName.splashBackground,
        body: SizedBox.expand(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClindIcon.logo(
                    size: 46.0,
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    'Clind',
                    style: context.textTheme.poppins18Bold.copyWith(
                      fontSize: 24.0,
                      height: 24.0 / 24.0,
                      color: ColorName.white,
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    FlowBlocConsumer<AdCubit, String>.when(
                      data: (context, state) => Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.viewPaddingOf(context).bottom,
                        ),
                        child: Image.network(
                          state.data,
                          fit: BoxFit.cover,
                        ),
                      ),
                      orElse: (context, state) => Container(
                        height: 100,
                        color: ColorName.black,
                      ),
                      onData: (context, state) =>
                          _hideAfterDelay(const Duration(seconds: 3)),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.viewPaddingOf(context).bottom,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            stops: const [
                              0,
                              0.5,
                            ],
                            colors: [
                              ColorName.splashBackground,
                              ColorName.splashBackground.withOpacity(0.0),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
