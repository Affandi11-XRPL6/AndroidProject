import 'package:flutter/material.dart';

class Rowcolumn extends StatelessWidget {
  const Rowcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            const Text(
              "Avenged Sevenfold",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Agar konten di tengah
              children: [
                _buildMemberCard(
                  imagePath: "assets/download (1).jpeg",
                  name: "Synyster Gates",
                ),
                _buildMemberCard(
                  imagePath: "assets/zACH.jpeg",
                  name: "Zach Vengeance",
                ),
                _buildMemberCard(
                  imagePath: "assets/download (1).jpeg",
                  name: "Begitu",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat card member
  Widget _buildMemberCard({required String imagePath, required String name}) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black, // Warna background card
        borderRadius: BorderRadius.circular(8), // Border radius untuk round corner
      ),
      child: Column(
        children: [
          SizedBox(
            width: 100, // Lebar tetap untuk gambar
            height: 100, // Tinggi tetap untuk gambar
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Agar gambar menyesuaikan dalam batas yang ditentukan
            ),
          ),
          const SizedBox(height: 8), // Jarak antara gambar dan teks
          Text(
            name,
            style: const TextStyle(
              color: Colors.white, // Warna teks putih
              fontSize: 12, // Ukuran teks
            ),
          ),
        ],
      ),
    );
  }
}
