import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tool_clind_component/component.dart';
import 'package:tool_clind_theme/gen/gen.dart';
import 'package:tool_clind_theme/theme.dart';
import 'package:tool_clind_network/network.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        final api = await ClindRestClient().get('/post-api/channels');
        print(api.data);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ClindAppBar(
        context: context,
        title: ClindAppBarTitle(
            title: Text(
          'Clind',
          style: context.textTheme.poppins18Bold
              .copyWith(color: ColorName.mainRed),
        )),
      ),
    );
  }
}
