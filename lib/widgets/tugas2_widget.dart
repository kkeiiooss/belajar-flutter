
import 'package:flutter/material.dart';

class Tugas2Widget extends StatelessWidget {
  const Tugas2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 2 - Layout Widget'),
        backgroundColor: const Color(0xFF536DFE),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Tugas 2',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
