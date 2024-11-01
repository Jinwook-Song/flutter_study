import 'package:authentication_repository/authentication_repository.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_firebase_login_starter/app/bloc/app_bloc.dart';
import 'package:flutter_bloc_firebase_login_starter/app/route/route.dart';
import 'package:flutter_bloc_firebase_login_starter/theme.dart';

class App extends StatefulWidget {
  final AuthenticationRepository _authenticationRepository;

  const App({
    required AuthenticationRepository authenticationRepository,
    super.key,
  }) : _authenticationRepository = authenticationRepository;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: widget._authenticationRepository,
      child: BlocProvider(
        lazy: false,
        create: (_) => AppBloc(
          authenticationRepository: widget._authenticationRepository,
        )..add(const AppUserSubscriptionRequested()),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: FlowBuilder<AppStatus>(
        state: context.select((AppBloc bloc) => bloc.state.status),
        onGeneratePages: onGenerateAppViewPages,
      ),
    );
  }
}
