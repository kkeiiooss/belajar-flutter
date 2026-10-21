import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Belajar card'),
          backgroundColor: Colors.purpleAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/sweater.jpg',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.contain,
                      ), // Image.asset

                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Sweeter Musim Dingin Coklat',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 8),

                            const Text(
                              'Rp 508.000',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),

                            const SizedBox(height: 10),

                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),

                                const SizedBox(width: 5),

                                const Text('4.8'),

                                const Spacer(),

                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_border,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ), // Row

                            const SizedBox(height: 10),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent,
                                ),
                                child: const Text(
                                  'Beli Sekarang',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ), // ElevatedButton
                            ), // SizedBox
                          ],
                        ), // Column
                      ), // Padding
                    ],
                  ), // Column
                ), // Card
              ],
            ), // Column
          ), // Padding
        ), // SingleChildScrollView
      ), // Scaffold
    ); // MaterialApp
  }
}