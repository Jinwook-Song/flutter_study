import '../ui.dart';
import 'package:calculator_basic_domain/domain.dart';
import 'package:calculator_basic_presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<CalculatorViewModel>().load();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Calculator'),
      ),
      body: ValueListenableBuilder<CalculatorEntity>(
        valueListenable: context.read<CalculatorViewModel>(),
        builder: (context, calculator, child) => Column(
          children: [
            CalculatorBoard(number: calculator.result),
            Row(
              children: [
                Expanded(
                    child: CalculatorButton.complex(
                  text: 'AC',
                  onTap: (buttonText) => _perform(buttonText, save: true),
                )),
                Expanded(
                    child: CalculatorButton.complex(
                  text: '+/-',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.complex(
                  text: '<',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.operator(
                  text: '/',
                  operator: calculator.operator,
                  onTap: _perform,
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: CalculatorButton.simple(
                  text: '7',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.simple(
                  text: '8',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.simple(
                  text: '9',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.operator(
                  text: 'x',
                  operator: calculator.operator,
                  onTap: _perform,
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: CalculatorButton.simple(
                  text: '4',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.simple(
                  text: '5',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.simple(
                  text: '6',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.operator(
                  text: '-',
                  operator: calculator.operator,
                  onTap: _perform,
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: CalculatorButton.simple(
                  text: '1',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.simple(
                  text: '2',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.simple(
                  text: '3',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.operator(
                  text: '+',
                  operator: calculator.operator,
                  onTap: _perform,
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CalculatorButton.simple(
                      text: '0',
                      onTap: _perform,
                    )),
                Expanded(
                    child: CalculatorButton.simple(
                  text: '.',
                  onTap: _perform,
                )),
                Expanded(
                    child: CalculatorButton.operator(
                  text: '=',
                  operator: calculator.operator,
                  onTap: (buttonText) => _perform(buttonText, save: true),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _perform(
    String buttonText, {
    bool save = false,
  }) async {
    context.read<CalculatorViewModel>().calculate(buttonText);

    if (save) await context.read<CalculatorViewModel>().save();
  }
}
