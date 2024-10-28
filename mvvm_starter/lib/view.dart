import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_starter/view_model.dart';
import 'package:mvvm_starter/model.dart';

// TODO: MVC 패턴을 MVVM 패턴으로 변경하여 카운터 앱이 동작하도록 변경하세요.

class CounterView extends StatelessWidget {
  final CounterViewModel counterViewModel;
  final CounterModeViewModel counterModeViewModel;
  const CounterView({
    super.key,
    required this.counterViewModel,
    required this.counterModeViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('MVVM'),
        actions: [
          IconButton(
            onPressed: onChangedMode,
            icon: const Icon(CupertinoIcons.arrow_2_squarepath),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            ValueListenableBuilder(
              valueListenable: counterViewModel.counter,
              builder: (context, value, child) => Text(
                value.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: execute,
        child: ValueListenableBuilder(
            valueListenable: counterModeViewModel.counterMode,
            builder: (context, value, child) => Icon(value.icon)),
      ),
    );
  }

  void onChangedMode() {
    counterModeViewModel.toggleMode();
  }

  void execute() {
    switch (counterModeViewModel.counterMode.value) {
      case CounterMode.plus:
        counterViewModel.increment();
      case CounterMode.minus:
        counterViewModel.decrement();
    }
  }
}

extension on CounterMode {
  IconData get icon {
    switch (this) {
      case CounterMode.plus:
        return CupertinoIcons.add;
      case CounterMode.minus:
        return CupertinoIcons.minus;
    }
  }
}
