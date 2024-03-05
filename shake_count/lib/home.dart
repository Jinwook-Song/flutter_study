import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with WidgetsBindingObserver {
  int _counter = 0;
  late ShakeDetector _detector;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _detector = ShakeDetector.autoStart(onPhoneShake: () {
      _counter++;
      setState(() {});
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
      case AppLifecycleState.resumed:
      case AppLifecycleState.inactive:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
    }
  }

  @override
  void dispose() {
    _detector.stopListening();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
