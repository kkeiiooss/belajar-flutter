import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Wrap',
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
                  '1. Wrap Paling Sederhana (Auto Pindah Baris)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Wrap(
                  spacing: 8.0, // jarak horizontal antar item
                  runSpacing: 8.0, // jarak vertikal antar baris
                  children: List.generate(
                    10,
                    (index) => Chip(label: Text('Tag ${index + 1}')),
                  ),
                ), // Wrap
                const SizedBox(height: 20),

                const Text(
                  '2. Wrap Untuk Tombol Kategori',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    'Elektronik',
                    'Fashion',
                    'Makanan',
                    'Olahraga',
                    'Kesehatan',
                    'Otomotif',
                  ]
                      .map(
                        (label) => ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purpleAccent,
                          ),
                          child: Text(
                            label,
                            style: const TextStyle(color: Colors.white),
                          ), // Text
                        ), // ElevatedButton
                      )
                      .toList(),
                ), // Wrap
                const SizedBox(height: 20),

                const Text(
                  '3. Wrap Dengan alignment center',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: List.generate(
                    6,
                    (index) => Container(
                      width: 60,
                      height: 60,
                      color: Colors.primaries[index % Colors.primaries.length],
                    ), // Container
                  ),
                ), // Wrap
                const SizedBox(height: 20),

                const Text(
                  '4. Wrap Dengan direction vertical',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                SizedBox(
                  height: 150,
                  child: Wrap(
                    direction: Axis.vertical,
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: List.generate(
                      8,
                      (index) => Chip(label: Text('Item ${index + 1}')),
                    ),
                  ), // Wrap
                ), // SizedBox
                const SizedBox(height: 20),

                const Text(
                  '5. Wrap Untuk Icon Sosial Media',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Wrap(
                  spacing: 15.0,
                  runSpacing: 15.0,
                  children: const [
                    Icon(Icons.facebook, size: 32, color: Colors.blue),
                    Icon(Icons.camera_alt, size: 32, color: Colors.pink),
                    Icon(Icons.email, size: 32, color: Colors.red),
                    Icon(Icons.chat, size: 32, color: Colors.green),
                    Icon(Icons.share, size: 32, color: Colors.orange),
                  ],
                ), // Wrap
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