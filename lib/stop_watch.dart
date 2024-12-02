import 'package:flutter/material.dart';
import 'package:glowing_avtar/timer_screen.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stop Watch'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TimerScreen()),
            );
          },
          child: const Text('Go to Stopwatch'),
        ),
      ),
    );
  }
}
