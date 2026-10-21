import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Row',
            style: TextStyle(color: Colors.white),
          ), // Text
          backgroundColor: Colors.purpleAccent,
        ), // AppBar
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  '1. Row Paling Sederhana',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(children: const [Text('Flutter'), Text('Dart'), Text('Mobile')]),
                const SizedBox(height: 20),

                const Text(
                  '2. Row Dengan Icon',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.home),
                    Icon(Icons.search),
                    Icon(Icons.person),
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '3. Row Dengan Icon dan Text',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(children: const [Icon(Icons.person), Text('Putri Khania Zahra')]),
                const SizedBox(height: 20),

                const Text(
                  '4. Row Dengan SizeBox',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.person),
                    SizedBox(width: 20),
                    Text('Putri Khania Zahra'),
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '5. Row Dengan mainAxisAlignment Start',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [Text('Andi'), Text('Budi'), Text('Ceppy')],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '6. Row Dengan mainAxisAlignment center',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text('Andi'), Text('Budi'), Text('Ceppy')],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '7. Row Dengan mainAxisAlignment End',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Text('Andi'), Text('Budi'), Text('Ceppy')],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '8. Row Dengan mainAxisAlignment SpaceBetween',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text('Andi'), Text('Budi'), Text('Ceppy')],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '9. Row Dengan mainAxisAlignment SpaceAround',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [Text('Andi'), Text('Budi'), Text('Ceppy')],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '10. Row Dengan mainAxisAlignment SpaceEvenly',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [Text('Andi'), Text('Budi'), Text('Ceppy')],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '11. Row Dengan crossAxisAlignment Start',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [Icon(Icons.person, size: 50), Text('Putri Khania Zahra')],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '12. Row Dengan crossAxisAlignment Center',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [Icon(Icons.person, size: 50), Text('Donianto')],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '13. Row Dengan crossAxisAlignment End',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [Icon(Icons.person, size: 50), Text('Donianto')],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '14. Row Dengan Container (Warna)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(width: 100, height: 100, color: Colors.blue),
                    const SizedBox(width: 10),
                    Container(width: 100, height: 100, color: Colors.red),
                    const SizedBox(width: 10),
                    Container(width: 100, height: 100, color: Colors.green),
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '15. Row Dengan Card',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ), // BoxDecoration
                        padding: const EdgeInsets.all(20),
                        child: const Text('Produk'),
                      ), // Container
                    ), // Card
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ), // BoxDecoration
                        padding: const EdgeInsets.all(20),
                        child: const Text('Pelanggan'),
                      ), // Container
                    ), // Card
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ), // BoxDecoration
                        padding: const EdgeInsets.all(20),
                        child: const Text('Distributor'),
                      ), // Container
                    ), // Card
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '16. Row Dengan Expanded',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: Container(height: 100, color: Colors.blue)),
                    const SizedBox(width: 10),
                    Expanded(child: Container(height: 100, color: Colors.red)),
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '17. Row Dengan Expanded dan Flex',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(height: 100, color: Colors.blue),
                    ), // Expanded
                    Expanded(
                      flex: 1,
                      child: Container(height: 100, color: Colors.red),
                    ), // Expanded
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '18. Row dengan Spacer',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.menu),
                    Spacer(),
                    Icon(Icons.search),
                    Icon(Icons.person),
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '19. Row untuk Header',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.menu),
                    SizedBox(width: 15),
                    Text(
                      'Dashboard',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ), // TextStyle
                    ), // Text
                    Spacer(),
                    Icon(Icons.notifications),
                    SizedBox(width: 10),
                    Icon(Icons.person),
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '19. Row untuk Profile',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: const [
                    CircleAvatar(radius: 30, child: Icon(Icons.person)),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Donianto',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ), // TextStyle
                        ), // Text
                        Text('XII SIJA 2'),
                      ],
                    ), // Column
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '20. Row untuk Rating',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.star, color: Colors.orange),
                    Icon(Icons.star, color: Colors.orange),
                    Icon(Icons.star, color: Colors.orange),
                    Icon(Icons.star, color: Colors.orange),
                    Icon(Icons.star_half, color: Colors.orange),
                    SizedBox(width: 10),
                    Text('4.5'),
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '21. Row untuk Harga Produk',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      'Rp 8.500.000',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ), // TextStyle
                    ), // Text
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ), // IconButton
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '22. Row dengan Image dan Informasi Produk',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.network(
                      'https://picsum.photos/100',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ), // Image.network
                    const SizedBox(width: 15),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Laptop ASUS',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ), // TextStyle
                        ), // Text
                        SizedBox(height: 5),
                        Text('Rp 8.500.000'),
                      ],
                    ), // Column
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '23. Row dengan Button',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text('Beli')),
                    const SizedBox(width: 10),
                    OutlinedButton(onPressed: () {}, child: const Text('Detail')),
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '25. Row dengan mainAxisSize Min dan Max',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [Icon(Icons.star), Text('Rating')],
                ), // Row
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const [Icon(Icons.star), Text('Rating')],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '26. Row di Dalam Card',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: const [
                        Icon(Icons.shopping_cart, size: 40),
                        SizedBox(width: 15),
                        Expanded(
                          child: Text(
                            'Laptop ASUS',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ), // TextStyle
                          ), // Text
                        ), // Expanded
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ), // Row
                  ), // Padding
                ), // Card
                const SizedBox(height: 20),

                const Text(
                  '27. Row dengan Card Dashboard',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: const [
                              Icon(Icons.shopping_cart),
                              SizedBox(height: 10),
                              Text('Produk'),
                            ],
                          ), // Column
                        ), // Padding
                      ), // Card
                    ), // Expanded
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: const [
                              Icon(Icons.people),
                              SizedBox(height: 10),
                              Text('Pelanggan'),
                            ],
                          ), // Column
                        ), // Padding
                      ), // Card
                    ), // Expanded
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '28. Row dengan VerticalDivider',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                SizedBox(
                  height: 40, // Menentukan tinggi area agar divider bisa muncul
                  child: Row(
                    children: const [
                      Text('Produk'),
                      VerticalDivider(
                        color: Colors.grey, // Warna garis
                        thickness: 2, // Ketebalan garis
                        width: 30, // Total area horizontal divider
                        indent: 10, // Jarak dari atas
                        endIndent: 10, // Jarak dari bawah
                      ), // VerticalDivider
                      Text('Pelanggan'),
                      VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                        width: 30,
                        indent: 10,
                        endIndent: 10,
                      ), // VerticalDivider
                      Text('Distributor'),
                      VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                        width: 30,
                        indent: 10,
                        endIndent: 10,
                      ), // VerticalDivider
                      Text('Diskon'),
                    ],
                  ), // Row
                ), // SizedBox
                const SizedBox(height: 20),

                const Text(
                  '29. Row di Dalam Column',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Column(
                  children: [
                    const Text(
                      'Produk Terbaru',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ), // TextStyle
                    ), // Text
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Laptop'),
                            ), // Padding
                          ), // Card
                        ), // Expanded
                        const SizedBox(width: 10),
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Smartphone'),
                            ), // Padding
                          ), // Card
                        ), // Expanded
                      ],
                    ), // Row
                  ],
                ), // Column
                const SizedBox(height: 50),

                const Text(
                  '30. Row Bermasalah Jika Teks Terlalu Panjang',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      'Ini adalah teks yang sangat panjang '
                      'dan dapat menyebabkan overflow pada Row.',
                    ), // Text
                    Icon(Icons.star),
                  ],
                ), // Row
                const SizedBox(height: 70),

                const Text(
                  '31. Row + Expanded untuk Teks Panjang',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.info, color: Colors.blue),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Flutter merupakan framework yang '
                        'digunakan untuk membuat aplikasi '
                        'multiplatform.',
                      ), // Text
                    ), // Expanded
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '32. Contoh Product Card Menggunakan Row',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Image.network(
                          'https://picsum.photos/120',
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ), // Image.network
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Laptop ASUS',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ), // TextStyle
                              ), // Text
                              SizedBox(height: 5),
                              Text('Rp 8.500.000'),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 20,
                                  ), // Icon
                                  SizedBox(width: 5),
                                  Text('4.8'),
                                ],
                              ), // Row
                            ],
                          ), // Column
                        ), // Expanded
                      ],
                    ), // Row
                  ), // Padding
                ), // Card
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