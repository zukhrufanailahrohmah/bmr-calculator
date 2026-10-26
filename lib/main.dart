
import 'package:flutter/material.dart';
import 'pages/input_page.dart';

// Fungsi utama yang pertama kali dijalankan
// ketika aplikasi BMR Calculator dibuka.
void main() {
  // Menjalankan aplikasi melalui widget BMRCalculator.
  runApp(const BMRCalculator());
}

// Class utama aplikasi BMR Calculator.
// StatelessWidget digunakan karena konfigurasi
// utama aplikasi tidak memerlukan perubahan state.
class BMRCalculator extends StatelessWidget {
  const BMRCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp mengatur konfigurasi utama aplikasi.
    return MaterialApp(

      // Menghilangkan tulisan DEBUG pada aplikasi.
      debugShowCheckedModeBanner: false,

      // Menggunakan tema gelap untuk seluruh aplikasi.
      theme: ThemeData.dark(),

      // Menentukan InputPage sebagai halaman pertama
      // yang ditampilkan ketika aplikasi dibuka.
      home: const InputPage(),
    );
  }
}
