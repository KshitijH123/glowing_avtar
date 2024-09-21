import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class AvatarGlowPage extends StatelessWidget {
  const AvatarGlowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Glow'),
      ),
      body: const Center(
        child: AvatarGlow(
          startDelay: Duration(milliseconds: 1000),
          glowColor: Colors.blue,
          endRadius: 200.0,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          child: Material(
            elevation: 8.0,
            shape: CircleBorder(),
            color: Colors.transparent,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avtar.png"),
              radius: 75.0,
            ),
          ),
        ),
      ),
    );
  }
}
