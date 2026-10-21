import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Expanded',
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
                  '1. Row Tanpa Expanded (Sesuai Ukuran Konten)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(width: 80, height: 60, color: Colors.blue),
                    Container(width: 80, height: 60, color: Colors.red),
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '2. Row Dengan Expanded (Mengisi Sisa Ruang)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: Container(height: 60, color: Colors.blue)),
                    const SizedBox(width: 10),
                    Expanded(child: Container(height: 60, color: Colors.red)),
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '3. Expanded Dengan Flex Berbeda (2:1)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(height: 60, color: Colors.blue),
                    ), // Expanded
                    Expanded(
                      flex: 1,
                      child: Container(height: 60, color: Colors.red),
                    ), // Expanded
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '4. Expanded Dengan Flex 3:2:1',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(height: 60, color: Colors.blue),
                    ), // Expanded
                    Expanded(
                      flex: 2,
                      child: Container(height: 60, color: Colors.orange),
                    ), // Expanded
                    Expanded(
                      flex: 1,
                      child: Container(height: 60, color: Colors.red),
                    ), // Expanded
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '5. Expanded di Dalam Column (Vertikal)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.blue)),
                      const SizedBox(height: 5),
                      Expanded(
                        flex: 2,
                        child: Container(color: Colors.red),
                      ), // Expanded
                    ],
                  ), // Column
                ), // SizedBox
                const SizedBox(height: 20),

                const Text(
                  '6. Expanded Untuk Mengatasi Overflow Text',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.info, color: Colors.blue),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Teks ini sangat panjang dan tanpa Expanded akan '
                        'menyebabkan RenderFlex overflow pada Row.',
                      ), // Text
                    ), // Expanded
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '7. Expanded Untuk Tombol Full Width',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purpleAccent,
                        ),
                        child: const Text(
                          'Beli',
                          style: TextStyle(color: Colors.white),
                        ), // Text
                      ), // ElevatedButton
                    ), // Expanded
                    const SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Detail'),
                      ), // OutlinedButton
                    ), // Expanded
                  ],
                ), // Row
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