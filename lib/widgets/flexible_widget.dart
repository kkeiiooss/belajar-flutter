import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Flexible',
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
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.purple, // Mengubah warna Purple
                      child: Text('1', style: TextStyle(color: Colors.yellow)),
                    ), // CircleAvatar
                    SizedBox(width: 10),
                    Text(
                      'Konsep Dasar Flexible (Di dalam Row)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ), // TextStyle
                    ), // Text
                  ],
                ), // Row
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 10.0),
                  child: Text(
                    'Tanpa Flexible (height: 50, width: 50)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ), // Text
                ), // Padding
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ), // BoxDecoration
                          height: 50,
                          width: 50,
                          child: const Center(
                            child: Text(
                              'A',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ), // TextStyle
                            ), // Text
                          ), // Center
                        ), // Container
                      ), // Padding
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                          ), // BoxDecoration
                          height: 50,
                          width: 50,
                          child: const Center(
                            child: Text(
                              'B',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ), // TextStyle
                            ), // Text
                          ), // Center
                        ), // Container
                      ), // Padding
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(8),
                          ), // BoxDecoration
                          height: 50,
                          width: 50,
                          child: const Center(
                            child: Text(
                              'C',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ), // TextStyle
                            ), // Text
                          ), // Center
                        ), // Container
                      ), // Padding
                    ],
                  ), // Row
                ), // Padding
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 10.0),
                  child: Text(
                    'Dengan Flexible (height: 50, width: 50)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ), // Text
                ), // Padding
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 10.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ), // BoxDecoration
                            height: 50,
                            width: 50,
                            child: const Center(
                              child: Text(
                                'A',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Flexible
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                            ), // BoxDecoration
                            height: 50,
                            width: 50,
                            child: const Center(
                              child: Text(
                                'B',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Flexible
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8),
                            ), // BoxDecoration
                            height: 50,
                            width: 50,
                            child: const Center(
                              child: Text(
                                'C',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Flexible
                    ],
                  ), // Row
                ), // Padding
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 10.0),
                  child: Text(
                    'Dengan Flexible (height: 50, tanpa width)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ), // Text
                ), // Padding
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 10.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ), // BoxDecoration
                            height: 50,
                            child: const Center(
                              child: Text(
                                'A',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Flexible
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                            ), // BoxDecoration
                            height: 50,
                            child: const Center(
                              child: Text(
                                'B',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Flexible
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8),
                            ), // BoxDecoration
                            height: 50,
                            child: const Center(
                              child: Text(
                                'C',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Flexible
                    ],
                  ), // Row
                ), // Padding
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.yellow, // Mengubah warna Purple
                      child: Text('2', style: TextStyle(color: Colors.purple)),
                    ), // CircleAvatar
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Menggunakan Flexible dengan FlexFit.loose (height: 50, width: 200)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ), // TextStyle
                      ), // Text
                    ), // Expanded
                  ],
                ), // Row
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 10.0),
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ), // BoxDecoration
                            height: 50,
                            width: 200,
                            child: const Center(
                              child: Text(
                                'FS',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Flexible
                    ],
                  ), // Row
                ), // Padding
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.purple, // Mengubah Purple
                      child: Text('3', style: TextStyle(color: Colors.yellow)),
                    ), // CircleAvatar
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Menggunakan Flexible dengan FlexFit.tight (height: 50, width: 200)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ), // TextStyle
                      ), // Text
                    ), // Expanded
                  ],
                ), // Row
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 10.0),
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ), // BoxDecoration
                            height: 50,
                            width: 200,
                            child: const Center(
                              child: Text(
                                'FT',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Flexible
                    ],
                  ), // Row
                ), // Padding
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.yellow, // Mengubah warna Purple
                      child: Text('4', style: TextStyle(color: Colors.purple)),
                    ), // CircleAvatar
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Mengatur perbandingan ukuran menggunakan flex (height: 100)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ), // TextStyle
                      ), // Text
                    ), // Expanded
                  ],
                ), // Row
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 10.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8),
                            ), // BoxDecoration
                            height: 100,
                            child: const Center(
                              child: Text(
                                'F1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Flexible
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                            ), // BoxDecoration
                            height: 100,
                            child: const Center(
                              child: Text(
                                'F2',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Flexible
                      Flexible(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8),
                            ), // BoxDecoration
                            height: 100,
                            child: const Center(
                              child: Text(
                                'F1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Flexible
                    ],
                  ), // Row
                ), // Padding
                SizedBox(height: 150),
              ],
            ), // Column
          ), // Padding
        ), // SingleChildScrollView
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.purpleAccent,
          child: Icon(Icons.arrow_back, color: Colors.white),
        ), // FloatingActionButton
      ), // Scaffold
    ); // MaterialApp
  }
}