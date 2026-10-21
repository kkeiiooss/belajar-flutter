import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

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
          title: const Text('Belajar container'),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  offset: Offset(0, 5),
                  color: Colors.grey,
                ),
              ],
            ), // BoxDecoration
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.phone_android,
                  color: Colors.white,
                  size: 60,
                ), // Icon
                SizedBox(height: 15),
                Text(
                  'Mobile Development',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ), // TextStyle
                ), // Text
                SizedBox(height: 10),
                Text(
                  'Belajar Flutter menggunakan Container',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ), // TextStyle
                ), // Text
              ],
            ), // Column
          ), // Container
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}