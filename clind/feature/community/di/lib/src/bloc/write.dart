import 'package:core_flutter_bloc/flutter_bloc.dart';
import 'package:community_data/data.dart';
import 'package:community_domain/domain.dart';
import 'package:core_util/util.dart';
import 'package:flutter/material.dart';
import 'package:community_presentation/presentation.dart';
import 'package:tool_clind_network/network.dart';

class WriteBlocProvider extends StatelessWidget {
  final Widget child;
  const WriteBlocProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return FlowMultiBlocProvider(
      providers: [
        FlowRepositoryProvider<IPostRemoteDataSource>(
          create: (context) =>
              PostRemoteDataSource(PostApi(Modular.get<ClindRestClient>())),
        ),
        FlowRepositoryProvider<IProfileRemoteDataSource>(
          create: (context) => ProfileRemoteDataSource(
              ProfileApi(Modular.get<ClindRestClient>())),
        ),
      ],
      child: FlowRepositoryProvider<WriteDataSource>(
        create: (context) => WriteDataSource(
          context.readFlowRepository<IPostRemoteDataSource>(),
          context.readFlowRepository<IProfileRemoteDataSource>(),
        ),
        child: FlowRepositoryProvider<IWriteRepository>(
          create: (context) => WriteRepository(
            context.readFlowRepository<WriteDataSource>(),
          ),
          child: FlowMultiRepositoryProvider(
            providers: [
              FlowRepositoryProvider<CreatePostUseCasae>(
                create: (context) => CreatePostUseCasae(
                  context.readFlowRepository<IWriteRepository>(),
                ),
              ),
              FlowRepositoryProvider<GetMyUseCasae>(
                create: (context) => GetMyUseCasae(
                  context.readFlowRepository<IWriteRepository>(),
                ),
              ),
            ],
            child: FlowMultiBlocProvider(
              providers: [
                FlowBlocProvider<WritePostCubit>(
                  create: (context) => WritePostCubit(
                    context.readFlowRepository<CreatePostUseCasae>(),
                  ),
                ),
                FlowBlocProvider<WriteMeCubit>(
                  create: (context) => WriteMeCubit(
                    context.readFlowRepository<GetMyUseCasae>(),
                  ),
                ),
              ],
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
