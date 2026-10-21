import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

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
            title: const Text('Belajar Image'),
            backgroundColor: Colors.purpleAccent,
          ),
        body: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://picsum.photos/400/250',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ), // Image.network

              SizedBox(height: 30),

              Image.asset(
                'assets/images/streetfire.png',
                width: double.infinity,
                height: 230,
                fit: BoxFit.contain,
              ), // Image.asset

              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Honda CB150R Streetfire',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text('Rp 38.500.000'),
                  ],
                ), // Column
              ), // Padding
            ],
          ), // Column
        ), // Card
      ), // Scaffold
    ); // MaterialApp
  }
}