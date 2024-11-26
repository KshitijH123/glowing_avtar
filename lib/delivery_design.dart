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

  String? _selectedPaymentMethod;

  void _addDropLocation() {
    if (locations.length < 3) {
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

  final TextEditingController _noteController = TextEditingController();
  final TextEditingController _promoCodeController = TextEditingController();

  void _removeLocation(int index) {
    setState(() {
      locations.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Out'),
      ),
      body: SingleChildScrollView(
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Column(
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
                            Center(
                              child: Column(
                                children: [
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
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        for (int i = 1; i < locations.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Color.fromARGB(255, 131, 152, 255),
                                  size: 24,
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      locations[i]['type']!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Center(
                                      child: Column(
                                        children: [
                                          Text(
                                            locations[i]['number']!,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            locations[i]['destination']!,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            locations[i]['timeLeft']!,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                IconButton(
                                  icon: const Icon(
                                      Icons.delete_outline_outlined,
                                      color: Colors.blue),
                                  onPressed: () => _removeLocation(i),
                                ),
                              ],
                            ),
                          ),
                         Align(
                          alignment: Alignment.bottomRight, 
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              onPressed: _addDropLocation,
                              backgroundColor: Colors.white,
                              child: const Icon(Icons.add, size: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'Note {Optional}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              width: 350,
              height: 100,
              child: TextField(
                controller: _noteController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Type your note here...',
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'Promo Code',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              width: 350,
              height: 50,
              child: TextField(
                controller: _promoCodeController,
                decoration: InputDecoration(
                  hintText: 'Enter promo code...',
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'Payment Method',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SizedBox(
                width: 330,
                child: Padding(
                  padding: const EdgeInsets.only(right: 2, left: 2),
                  child: Column(
                    children: [
                      paymentMethodRow('INFT', Icons.payment),
                      paymentMethodRow('Visa', Icons.credit_card),
                      paymentMethodRow('Mastercard', Icons.credit_card),
                      paymentMethodRow('Cash', Icons.money),
                      paymentMethodRow('Apple Pay', Icons.apple),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(right: 100),
              child: Text(
                'Payment Details',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const SizedBox(
                width: 330,
                child: Padding(
                  padding: EdgeInsets.only(right: 2, left: 2),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sub Total',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$50.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Paid by Wallet',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$10.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Discount',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$5.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 16,
                                 fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$55.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
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
              Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 131, 152, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget paymentMethodRow(String methodName, IconData icon) {
    return RadioListTile<String>(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            methodName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ), //;
          Icon(
            icon,
            color: const Color.fromARGB(255, 67, 91, 212),
            size: 24,
          ),
        ],
      ),
      value: methodName,
      groupValue: _selectedPaymentMethod,
      onChanged: (String? value) {
        setState(() {
          _selectedPaymentMethod = value;
        });
      },
    );
  }
}
