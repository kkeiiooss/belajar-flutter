import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar ListView',
            style: TextStyle(color: Colors.white),
          ), // Text
          backgroundColor: Colors.purpleAccent,
        ), // AppBar
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '1. ListView.builder Sederhana (Vertikal)',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ), // Text
            ), // Padding
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text('Siswa ${index + 1}'),
                    subtitle: const Text('XII SIJA'),
                  ); // ListTile
                },
              ), // ListView.builder
            ), // SizedBox
            const Divider(),

            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '2. ListView.separated (Dengan Pemisah)',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ), // Text
            ), // Padding
            SizedBox(
              height: 200,
              child: ListView.separated(
                itemCount: 6,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.shopping_cart),
                    title: Text('Produk ${index + 1}'),
                    trailing: const Text('Rp 100.000'),
                  ); // ListTile
                },
              ), // ListView.separated
            ), // SizedBox
            const Divider(),

            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '3. ListView Horizontal',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ), // Text
            ), // Padding
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    width: 90,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    color: Colors.primaries[index % Colors.primaries.length],
                    alignment: Alignment.center,
                    child: Text(
                      'Item ${index + 1}',
                      style: const TextStyle(color: Colors.white),
                    ), // Text
                  ); // Container
                },
              ), // ListView.builder
            ), // SizedBox
            const Divider(),

            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '4. ListView Produk Dengan Card',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ), // Text
            ), // Padding
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: const Icon(
                        Icons.laptop_mac,
                        color: Colors.purpleAccent,
                      ), // Icon
                      title: Text('Laptop ${index + 1}'),
                      subtitle: const Text('Rp 8.500.000'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ), // IconButton
                    ), // ListTile
                  ); // Card
                },
              ), // ListView.builder
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