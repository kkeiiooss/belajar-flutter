import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar GridView',
            style: TextStyle(color: Colors.white),
          ), // Text
          backgroundColor: Colors.purpleAccent,
        ), // AppBar
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '1. GridView.count (2 Kolom)',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ), // Text
            ), // Padding
            SizedBox(
              height: 220,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: List.generate(
                  4,
                  (index) => Container(
                    color: Colors.primaries[index % Colors.primaries.length],
                    alignment: Alignment.center,
                    child: Text(
                      'Item ${index + 1}',
                      style: const TextStyle(color: Colors.white),
                    ), // Text
                  ), // Container
                ),
              ), // GridView.count
            ), // SizedBox
            const Divider(),

            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '2. GridView.builder (3 Kolom)',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ), // Text
            ), // Padding
            SizedBox(
              height: 220,
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ), // SliverGridDelegateWithFixedCrossAxisCount
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.deepPurple.shade100,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.star,
                      color: Colors.deepPurple.shade700,
                    ), // Icon
                  ); // Container
                },
              ), // GridView.builder
            ), // SizedBox
            const Divider(),

            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '3. GridView Untuk Katalog Produk',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ), // Text
            ), // Padding
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ), // SliverGridDelegateWithFixedCrossAxisCount
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://picsum.photos/200?random=$index',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ), // Image.network
                        ), // Expanded
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Produk ${index + 1}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ), // TextStyle
                              ), // Text
                              const Text('Rp 150.000'),
                            ],
                          ), // Column
                        ), // Padding
                      ],
                    ), // Column
                  ); // Card
                },
              ), // GridView.builder
            ), // Expanded
          ],
        ), // Column
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