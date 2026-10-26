
import 'package:flutter/material.dart';
import '../constants.dart';

// Class BottomButton digunakan untuk membuat tombol
// yang berada di bagian bawah halaman aplikasi.
// Tombol ini digunakan untuk menghitung BMR
// maupun kembali ke halaman input.
class BottomButton extends StatelessWidget {

  // Constructor menerima teks tombol dan fungsi
  // yang akan dijalankan ketika tombol ditekan.
  BottomButton({
    required this.buttonTitle,
    required this.onTap,
  });

  // Variabel untuk menyimpan tulisan pada tombol.
  final String buttonTitle;

  // Variabel untuk menyimpan fungsi ketika tombol ditekan.
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    // GestureDetector digunakan untuk mendeteksi
    // ketika pengguna menekan tombol.
    return GestureDetector(

      // Menjalankan fungsi yang dikirim dari halaman
      // InputPage atau ResultPage.
      onTap: onTap,

      // Container digunakan untuk mengatur tampilan tombol.
      child: Container(

        // Memberikan jarak 10 pixel di atas tombol.
        margin: const EdgeInsets.only(top: 10.0),

        // Mengatur tinggi tombol berdasarkan constants.dart.
        height: bottomContainerHeight,

        // Mengatur warna latar belakang tombol.
        color: bottomContainerColor,

        // Menempatkan tulisan di tengah tombol.
        child: Center(
          child: Text(

            // Menampilkan teks tombol.
            buttonTitle,

            // Mengatur gaya tulisan tombol.
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
