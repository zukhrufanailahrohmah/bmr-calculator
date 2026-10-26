
import 'package:flutter/material.dart';

// Class CustomCard digunakan untuk membuat
// komponen kartu yang dapat digunakan berulang kali
// pada halaman input maupun halaman hasil BMR.
class CustomCard extends StatelessWidget {

  // Constructor menerima warna kartu, isi kartu,
  // dan fungsi yang dijalankan ketika kartu ditekan.
  CustomCard({
    required this.color,
    this.cardChild,
    this.onPress,
  });

  // Variabel untuk menentukan warna latar belakang kartu.
  final Color color;

  // Variabel untuk menyimpan widget yang ditampilkan
  // di dalam kartu, seperti ikon, teks, atau slider.
  // Tanda ? berarti nilai boleh null.
  final Widget? cardChild;

  // Variabel untuk menyimpan fungsi ketika kartu ditekan.
  // Bersifat opsional karena tidak semua kartu bisa diklik.
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {

    // GestureDetector digunakan untuk mendeteksi
    // sentuhan pengguna pada kartu.
    return GestureDetector(

      // Menjalankan fungsi onPress jika tersedia.
      // Contohnya ketika memilih gender MALE atau FEMALE.
      onTap: onPress,

      // Container digunakan untuk mengatur
      // ukuran, jarak, warna, dan bentuk kartu.
      child: Container(

        // Memberikan jarak luar sebesar 15 pixel
        // pada semua sisi kartu.
        margin: const EdgeInsets.all(15.0),

        // Memberikan jarak dalam sebesar 1 pixel
        // pada sisi kiri dan kanan kartu.
        padding: const EdgeInsets.only(
          left: 1.0,
          right: 1.0,
        ),

        // Mengatur tampilan latar belakang kartu.
        decoration: BoxDecoration(

          // Warna kartu mengikuti nilai color
          // yang dikirim dari halaman pemanggil.
          color: color,

          // Membuat sudut kartu melengkung.
          borderRadius: BorderRadius.circular(10.0),
        ),

        // Menampilkan isi kartu sesuai widget
        // yang dikirim melalui parameter cardChild.
        child: cardChild,
      ),
    );
  }
}
