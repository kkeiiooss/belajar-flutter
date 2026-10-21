import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

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
        title: const Text('Belajar Icon'),
        backgroundColor: Colors.purpleAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.phone_android,
                size: 100,
                color: Colors.blue,
              ),

              const SizedBox(height: 20),

              const Text(
                'Mobile Development',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                  SizedBox(width: 8),
                  Text('Belajar Flutter'),
                ],
              ), // Row

              const SizedBox(height: 20),

              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ), // Column
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}