import 'package:flutter/material.dart';
import 'package:glowing_avtar/animation.dart';
import 'package:glowing_avtar/delivery_design.dart';
import 'package:glowing_avtar/heart_avtar_page.dart';
import 'package:glowing_avtar/login_page.dart';
import 'package:glowing_avtar/phone_no_passward.dart';
import 'package:glowing_avtar/stop_watch.dart';
import 'avatarglow.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AvatarGlowPage()),
                );
              },
              child: const Text('Go to Avatar Glow'),
            ),
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HeartAvtarPage()),
                );
              },
              child: const Text('Go to Heart Avatar'),
            ),
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DeliveryDesign()),
                );
              },
              child: const Text('Go to Delivery design'),
            ),
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExampleStaggeredAnimations ()),
                );
              },
              child: const Text('Go to Animation page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginPage()),
                );
              },
              child: const Text('Go to Login page'),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PhoneNoPassword()),
                );
              },
              child: const Text('Go to phoneNumber page'),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StopWatch()),
                );
              },
              child: const Text('Go to stopwatch page'),
            ),
          ],
        ),
      ),
      
    );
  }
}
