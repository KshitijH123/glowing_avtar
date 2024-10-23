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
      appBar: AppBar(
        title: const Text('Check Out'),
      ),
      body: Column(
        children: [
          Center(
            child: Card(
              color: Colors.purple[100],
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SizedBox(
                width: 300,
                height: 150,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/seadan.png',
                            width: 60,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Sedan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            'Food',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Text(
                            'Date: 10/10/2023',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Text(
                            'Pickup Time: 09.00 AM to 09:30',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(right: 150),
            child: Text(
              'Pickup & Drop Location',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
