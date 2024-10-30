import 'package:calculator_basic_data/data.dart';
import 'package:calculator_basic_domain/domain.dart';
import 'package:calculator_basic_presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorProvider extends StatelessWidget {
  final Widget child;
  const CalculatorProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CalculatorLocalDataSource>(
          create: (context) => CalculatorLocalDataSourceImpl(),
        ),
      ],
      child: MultiProvider(
        providers: [
          Provider<CalculatorDataSource>(
            create: (context) => CalculatorDataSource(context.read()),
          ),
        ],
        child: MultiProvider(
          providers: [
            Provider<CalculatorRepository>(
              create: (context) => CalculatorRepositoryImpl(context.read()),
            )
          ],
          child: MultiProvider(
            providers: [
              Provider<FetchCalculatorUsecase>(
                create: (context) => FetchCalculatorUsecase(context.read()),
              ),
              Provider<SaveCalculatorUsecase>(
                create: (context) => SaveCalculatorUsecase(context.read()),
              )
            ],
            child: MultiProvider(
              providers: [
                ChangeNotifierProvider<CalculatorViewModel>(
                  create: (context) => CalculatorViewModel(
                    context.read(),
                    context.read(),
                    CalculatorEntity(),
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
