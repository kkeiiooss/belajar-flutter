import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Stack',
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
                  '1. Stack Paling Sederhana (Menumpuk Widget)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(color: Colors.blue),
                      Container(
                        margin: const EdgeInsets.all(20),
                        color: Colors.orange,
                      ), // Container
                      const Center(
                        child: Text(
                          'Di Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ), // TextStyle
                        ), // Text
                      ), // Center
                    ],
                  ), // Stack
                ), // SizedBox
                const SizedBox(height: 20),

                const Text(
                  '2. Stack Dengan Positioned',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(color: Colors.deepPurple),
                      const Positioned(
                        top: 10,
                        left: 10,
                        child: Text(
                          'Kiri Atas',
                          style: TextStyle(color: Colors.white),
                        ), // Text
                      ), // Positioned
                      const Positioned(
                        top: 10,
                        right: 10,
                        child: Text(
                          'Kanan Atas',
                          style: TextStyle(color: Colors.white),
                        ), // Text
                      ), // Positioned
                      const Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          'Kiri Bawah',
                          style: TextStyle(color: Colors.white),
                        ), // Text
                      ), // Positioned
                      const Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          'Kanan Bawah',
                          style: TextStyle(color: Colors.white),
                        ), // Text
                      ), // Positioned
                    ],
                  ), // Stack
                ), // SizedBox
                const SizedBox(height: 20),

                const Text(
                  '3. Stack Untuk Badge/Notifikasi',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Stack(
                    children: [
                      const Icon(Icons.notifications, size: 50),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ), // BoxDecoration
                          child: const Text(
                            '5',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ), // Text
                        ), // Container
                      ), // Positioned
                    ],
                  ), // Stack
                ), // SizedBox
                const SizedBox(height: 20),

                const Text(
                  '4. Stack Dengan Gambar dan Teks Overlay',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        'https://picsum.photos/400/200',
                        fit: BoxFit.cover,
                      ), // Image.network
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withValues(alpha: 0.7), // <-- Ubah bagian ini
                          ],
                        ), // LinearGradient
                        ), // BoxDecoration
                      ), // Container
                      const Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          'Judul Berita',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ), // TextStyle
                        ), // Text
                      ), // Positioned
                    ],
                  ), // Stack
                ), // SizedBox
                const SizedBox(height: 20),

                const Text(
                  '5. Stack alignment Center',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(width: 150, height: 150, color: Colors.blue),
                      Container(width: 100, height: 100, color: Colors.orange),
                      Container(width: 50, height: 50, color: Colors.red),
                    ],
                  ), // Stack
                ), // SizedBox
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