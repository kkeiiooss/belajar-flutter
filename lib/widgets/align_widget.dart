import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Align',
            style: TextStyle(color: Colors.white),
          ), // Text
          backgroundColor: Colors.purpleAccent,
        ), // AppBar
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '1. Align.topLeft',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Kiri Atas'),
                  ), // Align
                ), // Container
                const SizedBox(height: 20),

                const Text(
                  '2. Align.center',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text('Tengah'),
                  ), // Align
                ), // Container
                const SizedBox(height: 20),

                const Text(
                  '3. Align.bottomRight',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Text('Kanan Bawah'),
                  ), // Align
                ), // Container
                const SizedBox(height: 20),

                const Text(
                  '4. Align Dengan Alignment Custom (x, y)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: const Align(
                    alignment: Alignment(0.5, -0.5),
                    child: Text('Alignment(0.5, -0.5)'),
                  ), // Align
                ), // Container
                const SizedBox(height: 20),

                const Text(
                  '5. Align Untuk Icon Favorite',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.favorite, color: Colors.red, size: 32),
                  ), // Align
                ), // Container
                const SizedBox(height: 20),

                const Text(
                  '6. Align Dengan FractionalOffset (widthFactor)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Container(
                  color: Colors.grey.shade200,
                  child: Align(
                    alignment: Alignment.center,
                    widthFactor: 2,
                    heightFactor: 2,
                    child: Container(
                      color: Colors.purpleAccent,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Kotak Kecil',
                        style: TextStyle(color: Colors.white),
                      ), // Text
                    ), // Container
                  ), // Align
                ), // Container
                const SizedBox(height: 20),
              ],
            ), // Column
          ), // Padding
        ), // SingleChildScrollView
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.purpleAccent,
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ), // FloatingActionButton
      ), // Scaffold
    ); // MaterialApp
  }
}