import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

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
          title: const Text('Belajar padding'),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mobile Development',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Belajar menggunakan widget Padding '
                'pada framework Flutter.',
              ),

              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ), // BoxDecoration
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Produk',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Laptop ASUS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'Rp 8.500.000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ), // Column
              ), // Container
            ],
          ), // Column
        ), // Padding
      ), // Scaffold
    ); // MaterialApp
  }
}