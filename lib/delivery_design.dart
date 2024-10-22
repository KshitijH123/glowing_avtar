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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://media.istockphoto.com/id/852439862/photo/three-dimensional-modern-white-car.jpg?s=612x612&w=0&k=20&c=aBFCM8v0ZnNfxK1CpAN0WnQm2UWGuJkPNoO1wWzlRdI=',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                              height: 8), 
                          const Text(
                            'Sedan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child:
                          SizedBox(), 
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
