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
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.purple, // Mengubah warna Purple
                      child: Text('1', style: TextStyle(color: Colors.yellow)),
                    ), // CircleAvatar
                    SizedBox(width: 10),
                    Text(
                      'Konsep Dasar Expanded (Di dalam Row)',
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
                    'Tanpa Expanded (height: 50, width: 50)',
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
                    'Dengan Expanded (height: 50, width: 50)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ), // Text
                ), // Padding
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 10.0),
                  child: Row(
                    children: [
                      Expanded(
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
                      ), // Expanded
                      Expanded(
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
                      ), // Expanded
                      Expanded(
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
                      ), // Expanded
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
                        'Mengatur perbandingan ukuran menggunakan flex (height: 50, width: 50)',
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
                      Expanded(
                        flex: 1,
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
                                'F1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Expanded
                      Expanded(
                        flex: 2,
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
                                'F2',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Expanded
                      Expanded(
                        flex: 3,
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
                                'F3',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Expanded
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
                        'Perbedaan Expanded dan Flexible (height: 50, width: 50)',
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
                      Expanded(
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
                                'E',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ), // TextStyle
                              ), // Text
                            ), // Center
                          ), // Container
                        ), // Padding
                      ), // Expanded
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
                    ],
                  ), // Row
                ), // Padding
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