import 'package:flutter/material.dart';

class DeliveryDesign extends StatefulWidget {
  const DeliveryDesign({super.key});

  @override
  State<DeliveryDesign> createState() => _DeliveryDesignState();
}

class _DeliveryDesignState extends State<DeliveryDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Pickup & Drop Location'),
      ),
    );
  }
}