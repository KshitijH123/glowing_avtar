import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart'; // Make sure to add this package in your pubspec.yaml

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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
            const SizedBox(
                height:
                    20), // Adds some space between the counter and AvatarGlow
            AvatarGlow(
              startDelay: const Duration(milliseconds: 1000),
              glowColor: Colors.blue,
              endRadius: 100.0,
              duration: const Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              child: Material(
                elevation: 8.0,
                shape: const CircleBorder(),
                color: Colors.transparent,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile.png"),
                  radius: 50.0,
                ),
              ),
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
