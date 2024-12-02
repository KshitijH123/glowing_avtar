import 'dart:async';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  String seconds = "00";
  String minutes = "00";
  String hours = "00";
  late Timer _timer;
  int _secondsCount = 0;
  bool _isRunning = false;

  void _startTimer() {
    if (!_isRunning) {
      _isRunning = true;
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          _secondsCount++;
          seconds = (_secondsCount % 60).toString().padLeft(2, '0');
          minutes = ((_secondsCount ~/ 60) % 60).toString().padLeft(2, '0');
          hours = (_secondsCount ~/ 3600).toString().padLeft(2, '0');
        });
      });
    }
  }

  void _stopTimer() {
    if (_isRunning) {
      _timer.cancel();
      setState(() {
        _isRunning = false;
      });
    }
  }

  void _resetTimer() {
    if (_isRunning) {
      _timer.cancel();
    }
    setState(() {
      _isRunning = false;
      _secondsCount = 0;
      seconds = "00";
      minutes = "00";
      hours = "00";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer Screen'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.yellow,
                  height: 150,
                  width: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Center(
                    child: Text(
                      seconds,
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: _startTimer,
                    child: const Text('Start'),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.blueAccent[200],
                  height: 150,
                  width: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Center(
                    child: Text(
                      '$minutes',
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: _stopTimer,
                    child: const Text('Stop'),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.greenAccent[200],
                  height: 150,
                  width: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Center(
                    child: Text(
                      '$hours',
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: _resetTimer,
                    child: const Text('Reset'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
