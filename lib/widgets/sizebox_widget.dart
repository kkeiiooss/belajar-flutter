import 'package:flutter/material.dart';

class SizeBoxWidget extends StatelessWidget {
  const SizeBoxWidget({super.key});

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
          title: const Text('Belajar sizebox'),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
                SizedBox(height: 15),
                Text(
                  'Putri Khania Zahra',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text('Mobile Developer', style: TextStyle(color: Colors.grey)),
              ],
              ),
          ),
        ),
      ),
    );
  }
}