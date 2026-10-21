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
                const Text(
                  '1. Flexible Dengan FlexFit.loose (Default)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const Text(
                  '   Widget hanya sebesar isinya, tidak dipaksa memenuhi ruang',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.blue,
                      ), // Container
                    ), // Flexible
                    Container(height: 60, width: 60, color: Colors.red),
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '2. Flexible Dengan FlexFit.tight (Seperti Expanded)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(height: 60, color: Colors.blue),
                    ), // Flexible
                    const SizedBox(width: 10),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(height: 60, color: Colors.red),
                    ), // Flexible
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '3. Flexible Dengan Flex Berbeda',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(height: 60, color: Colors.blue),
                    ), // Flexible
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(height: 60, color: Colors.orange),
                    ), // Flexible
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '4. Perbedaan Flexible vs Expanded',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        height: 60,
                        color: Colors.blue,
                        alignment: Alignment.center,
                        child: const Text(
                          'Flexible\n(loose)',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ), // Text
                      ), // Container
                    ), // Flexible
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 60,
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: const Text(
                          'Expanded\n(tight)',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ), // Text
                      ), // Container
                    ), // Expanded
                  ],
                ), // Row
                const SizedBox(height: 20),

                const Text(
                  '5. Flexible di Dalam Column',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ), // Text
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.blue),
                      ), // Flexible
                      const SizedBox(height: 5),
                      Flexible(
                        flex: 2,
                        child: Container(color: Colors.red),
                      ), // Flexible
                    ],
                  ), // Column
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