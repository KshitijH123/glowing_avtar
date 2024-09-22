import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class HeartAvtarPage extends StatelessWidget {
  const HeartAvtarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heart Avatar'),
      ),
      body: const Center(
        child: AvatarGlow(
          startDelay: Duration(milliseconds: 1000),
          glowColor: Colors.red,
          endRadius: 200.0,
          duration: Duration(milliseconds: 1000),
          repeat: true,
          child: Material(
            elevation: 8.0,
            shape: CircleBorder(),
            color: Colors.transparent,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/heart.png"),
              radius: 75.0,
            ),
          ),
        ),
      ),
    );
  }
}
