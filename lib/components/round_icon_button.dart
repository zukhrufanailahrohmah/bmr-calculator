
import 'package:flutter/material.dart';

// Class RoundIconButton digunakan untuk membuat
// tombol berbentuk lingkaran dengan ikon plus atau minus.
// Tombol ini digunakan untuk mengatur berat badan
// dan usia pengguna pada halaman InputPage.
class RoundIconButton extends StatelessWidget {

  // Constructor menerima ikon dan fungsi
  // yang dijalankan ketika tombol ditekan.
  RoundIconButton({
    required this.icon,
    required this.onPressed,
  });

  // Variabel untuk menyimpan ikon tombol.
  // Contohnya ikon plus (+) atau minus (-).
  final IconData icon;

  // Variabel untuk menyimpan fungsi yang akan
  // dijalankan ketika pengguna menekan tombol.
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {

    // RawMaterialButton digunakan untuk membuat
    // tombol dengan tampilan yang dapat disesuaikan.
    return RawMaterialButton(

      // Menghilangkan efek bayangan pada tombol.
      elevation: 0.0,

      // Mengatur ukuran tombol menjadi 40 x 40 pixel.
      constraints: const BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),

      // Membuat bentuk tombol menjadi lingkaran.
      shape: const CircleBorder(),

      // Mengatur warna latar belakang tombol.
      fillColor: const Color(0xFF4C4F5E),

      // Menjalankan fungsi ketika tombol ditekan.
      // Fungsi ini dikirim dari halaman InputPage.
      onPressed: onPressed,

      // Menampilkan ikon plus atau minus
      // di bagian tengah tombol.
      child: Icon(icon),
    );
  }
}
