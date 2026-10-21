import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

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
          title: const Text('Belajar center'),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
               children: [
              const Icon(
                Icons.phone_android,
                size: 80,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              const Text(
                'Belajar Flutter',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Widget Center',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Mulai Belajar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}