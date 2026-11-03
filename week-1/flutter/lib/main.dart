import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterApp());
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Flutter', style: textTheme.headlineMedium),
              const SizedBox(height: 24),
              Text('Laskurin arvo: $_count', style: textTheme.headlineSmall),
              const SizedBox(height: 24),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 12,
                children: [
                  // Own change: the counter can't go below zero
                  ElevatedButton(
                    onPressed: _count > 0
                        ? () => setState(() => _count--)
                        : null,
                    child: const Text('-'),
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() => _count = 0),
                    child: const Text('Reset'),
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() => _count++),
                    child: const Text('+'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
