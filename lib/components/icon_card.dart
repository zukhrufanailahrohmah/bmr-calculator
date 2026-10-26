
import 'package:flutter/material.dart';
import '../constants.dart';

// Class IconCard digunakan untuk menampilkan
// ikon dan teks pada kartu pilihan jenis kelamin.
// Komponen ini digunakan pada halaman InputPage.
class IconCard extends StatelessWidget {

  // Constructor menerima ikon dan teks keterangan.
  // cardIcon bersifat opsional, sedangkan caption wajib diisi.
  IconCard({
    this.cardIcon,
    required this.caption,
  });

  // Variabel untuk menyimpan ikon yang ditampilkan.
  // Tanda ? berarti nilai boleh null.
  final IconData? cardIcon;

  // Variabel untuk menyimpan teks keterangan ikon.
  final String caption;

  @override
  Widget build(BuildContext context) {

    // Column digunakan untuk menyusun ikon dan teks
    // secara vertikal dari atas ke bawah.
    return Column(

      // Menempatkan ikon dan teks di tengah kartu.
      mainAxisAlignment: MainAxisAlignment.center,

      children: [

        // Menampilkan ikon berdasarkan nilai cardIcon.
        // Contohnya ikon laki-laki atau perempuan.
        Icon(
          cardIcon,
          size: 70.0,
        ),

        // Memberikan jarak vertikal sebesar 15 pixel
        // antara ikon dan teks.
        const SizedBox(
          height: 15.0,
        ),

        // Menampilkan tulisan MALE atau FEMALE.
        Text(
          caption,

          // Menggunakan gaya teks dari constants.dart.
          style: labelTextStyle,
        ),
      ],
    );
  }
}
