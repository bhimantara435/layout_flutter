import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // === Method helper (praktikum 2) ===
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // ===== Title Section =====
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // padding 32
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // mulai dari kiri
              children: [
                /* soal 2 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // padding bawah 8
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // warna abu-abu
                  ),
                ),
              ],
            ),
          ),
          /* soal 3 */
          const Icon(
            Icons.star,
            color: Colors.red, // warna merah
          ),
          const Text('41'),
        ],
      ),
    );

    // ===== Return MaterialApp =====
    return MaterialApp(
      title: 'Flutter layout: Bhimantara 2341760025',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection, // tampilkan titleSection
            // button row nanti bisa ditambahkan di bawah sini
          ],
        ),
      ),
    );
  }
}
