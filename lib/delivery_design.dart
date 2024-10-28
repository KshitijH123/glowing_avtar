import 'package:flutter/material.dart';

class DeliveryDesign extends StatefulWidget {
  const DeliveryDesign({super.key});

  @override
  State<DeliveryDesign> createState() => _DeliveryDesignState();
}

class _DeliveryDesignState extends State<DeliveryDesign> {
  List<Map<String, String>> locations = [
    {
      'type': 'Pickup Location',
      'number': 'No: 12345',
      'destination': 'Destination: Main Street',
      'timeLeft': 'Time Left: 15 mins'
    },
  ];

  void _addDropLocation() {
    if (locations.length < 3) {
      // Allow up to 2 drop locations
      setState(() {
        locations.add({
          'type': 'Drop Location',
          'number': 'No: ${54321 + locations.length - 1}',
          'destination': 'Destination: Second Street ${locations.length - 1}',
          'timeLeft': 'Time Left: ${20 + locations.length * 5} mins'
        });
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Maximum locations reached!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Out'),
      ),
      body: SingleChildScrollView(
        // Make the page scrollable
        child: Column(
          children: [
            Center(
              child: Card(
                color: const Color.fromARGB(255, 131, 152, 255),
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  width: 300,
                  height: 150,
                  child: Stack(
                    children: [
                      Row(
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
                      const Positioned(
                        bottom: 14,
                        right: 8,
                        child: Icon(
                          Icons.note_alt,
                          color: Colors.white,
                          size: 24,
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
            const SizedBox(height: 16),
            Center(
              child: Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  width: 300,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.my_location_rounded,
                                      color: Color.fromARGB(255, 131, 152, 255),
                                      size: 24,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Pickup Location',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.note_alt,
                                  color: Color.fromARGB(255, 131, 152, 255),
                                  size: 24,
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              'No: 12345',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Destination: Main Street',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Time Left: 15 mins',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: FloatingActionButton(
                              onPressed:
                                  _addDropLocation, // Call function to add drop location
                              backgroundColor: Colors.white,
                              child: const Icon(Icons.add, size: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            for (var location in locations.skip(1))
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Center(
                  child: Card(
                    color: Colors.white,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SizedBox(
                      width: 300,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.my_location_rounded,
                                      color: Color.fromARGB(255, 131, 152, 255),
                                      size: 24,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      location['type']!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.note_alt,
                                  color: Color.fromARGB(255, 131, 152, 255),
                                  size: 24,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              location['number']!,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              location['destination']!,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              location['timeLeft']!,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
