import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  // Fungsi pembantu untuk membuat Judul Poin (Nomor dalam lingkaran + Teks)
  Widget _buildJudul(String nomor, String teks) {
    return Row(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.purple.shade50,
          child: Text(
            nomor,
            style: const TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            teks,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  // Fungsi pembantu untuk box demonstrasi MainAxisAlignment (Warna Lime)
  Widget _buildMainAxisAlignmentBox(MainAxisAlignment alignment) {
    return Container(
      height: 300, // Di PDF menggunakan height 300 untuk menghindari overflow
      width: double.infinity,
      color: Colors.lime,
      child: Column(
        mainAxisAlignment: alignment,
        children: const [
          Text('Pada Column, main axis adalah sumbu vertikal', textAlign: TextAlign.center),
          Text('Elektronik'),
          Text('Fashion'),
          Text('Kesehatan'),
        ],
      ),
    );
  }

  // Fungsi pembantu untuk box demonstrasi CrossAxisAlignment (Warna Hijau)
  Widget _buildCrossAxisAlignmentBox(CrossAxisAlignment alignment, {bool isStretch = false}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.green,
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          Text(
            isStretch
                ? 'Pada Column, crossAxisAlignment.stretch, Widget anak akan melebar memenuhi ruang horizontal yang tersedia. Sangat berguna untuk tombol full width.'
                : 'Pada Column, cross axis adalah sumbu horizontal',
            textAlign: isStretch ? TextAlign.left : TextAlign.center,
          ),
          const Text('Elektronik'),
          const Text('Fashion'),
          const Text('Kesehatan'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belajar Column',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purpleAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Column Paling Sederhana
            _buildJudul('1', 'Column Paling Sederhana'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Nama'),
                  Text('Alamat'),
                  Text('No. Telepon'),
                ],
              ),
            ),

            // 2. Column dengan Text
            _buildJudul('2', 'Column dengan Text'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Belajar Flutter', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text('Materi Widget Column'),
                  Text('Kelas XII SIJA'),
                ],
              ),
            ),

            // 3. Column dengan Icon
            _buildJudul('3', 'Column dengan Icon'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: Container(
                color: const Color.fromARGB(255, 107, 48, 44),
                width: 100,
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: const [
                    Icon(Icons.home, size: 50, color: Colors.greenAccent),
                    Text('Home', style: TextStyle(color: Colors.greenAccent)),
                  ],
                ),
              ),
            ),

            // 4. Column dengan SizeBox
            _buildJudul('4', 'Column dengan SizeBox'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Nama'),
                  SizedBox(height: 20),
                  Text('Alamat'),
                  SizedBox(height: 20),
                  Text('Telepon'),
                ],
              ),
            ),

            // 5. MainAxisAlignment.start
            _buildJudul('5', 'Column dengan mainAxisAlignment.start'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: _buildMainAxisAlignmentBox(MainAxisAlignment.start),
            ),

            // 6. MainAxisAlignment.center
            _buildJudul('6', 'Column dengan mainAxisAlignment.center'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: _buildMainAxisAlignmentBox(MainAxisAlignment.center),
            ),

            // 7. MainAxisAlignment.end
            _buildJudul('7', 'Column dengan mainAxisAlignment.end'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: _buildMainAxisAlignmentBox(MainAxisAlignment.end),
            ),

            // 8. MainAxisAlignment.spaceBetween
            _buildJudul('8', 'Column dengan mainAxisAlignment.spaceBetween'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: _buildMainAxisAlignmentBox(MainAxisAlignment.spaceBetween),
            ),

            // 9. MainAxisAlignment.spaceAround
            _buildJudul('9', 'Column dengan mainAxisAlignment.spaceAround'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: _buildMainAxisAlignmentBox(MainAxisAlignment.spaceAround),
            ),

            // 10. MainAxisAlignment.spaceEvenly
            _buildJudul('10', 'Column dengan mainAxisAlignment.spaceEvenly'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: _buildMainAxisAlignmentBox(MainAxisAlignment.spaceEvenly),
            ),

            // 11. CrossAxisAlignment.start
            _buildJudul('11', 'Column dengan crossAxisAlignment.start'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: _buildCrossAxisAlignmentBox(CrossAxisAlignment.start),
            ),

            // 12. CrossAxisAlignment.center
            _buildJudul('12', 'Column dengan crossAxisAlignment.center'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: _buildCrossAxisAlignmentBox(CrossAxisAlignment.center),
            ),

            // 13. CrossAxisAlignment.end
            _buildJudul('13', 'Column dengan crossAxisAlignment.end'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: _buildCrossAxisAlignmentBox(CrossAxisAlignment.end),
            ),

            // 14. CrossAxisAlignment.stretch
            _buildJudul('14', 'Column dengan crossAxisAlignment.stretch'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: _buildCrossAxisAlignmentBox(CrossAxisAlignment.stretch, isStretch: true),
            ),

            // 15. Column dengan Button
            _buildJudul('15', 'Column dengan Button'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text('Login')),
                  ElevatedButton(onPressed: () {}, child: const Text('Register')),
                ],
              ),
            ),

            // 16. Column dengan TextField
            _buildJudul('16', 'Column dengan TextField'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: Column(
                children: [
                  const Icon(Icons.lock, size: 80),
                  const SizedBox(height: 10),
                  const Text('Login', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  const TextField(decoration: InputDecoration(labelText: 'Username', border: OutlineInputBorder())),
                  const SizedBox(height: 16),
                  const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder())),
                  const SizedBox(height: 20),
                  ElevatedButton(onPressed: () {}, child: const Text('Login')),
                ],
              ),
            ),

            // 17. Column dengan Row
            _buildJudul('17', 'Column dengan Row'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: Card(
                color: Colors.lime,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Card(
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Laptop ASUS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Row(
                            children: const [
                              Icon(Icons.star, size: 20),
                              SizedBox(width: 5),
                              Text('4.8'),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text('Rp 8.000.000'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // 18. Column + Avatar + Profile
            _buildJudul('18', 'Column + Avatar + Profile'),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 10, bottom: 20),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/Putri.jpg'), // Pastikan gambar ada di pubspec.yaml
                  ),
                  const SizedBox(height: 16),
                  const Text('Putri Khania Zahra', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  const Text('Web & Mobile Developer'),
                  const SizedBox(height: 20),
                  ElevatedButton(onPressed: () {}, child: const Text('Edit Profile')),
                ],
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}