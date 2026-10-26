
import 'package:flutter/material.dart';

// File constants.dart digunakan untuk menyimpan
// nilai tetap yang dipakai pada seluruh aplikasi.
// Tujuannya agar warna, ukuran, dan gaya tampilan
// konsisten serta mudah diubah.

// WARNA KARTU

// Warna kartu ketika pilihan sedang aktif.
// Contohnya saat pengguna memilih gender MALE.
const activeCardColor = Color(0xFF1D1E33);

// Warna kartu ketika pilihan tidak aktif.
// Contohnya ketika gender FEMALE tidak dipilih.
const inactiveCardColor = Color(0xFF111328);


// PENGATURAN TOMBOL BAWAH

// Mengatur tinggi tombol CALCULATE BMR
// dan RE-CALCULATE menjadi 80 pixel.
const bottomContainerHeight = 80.0;

// Mengatur warna latar belakang tombol bawah.
const bottomContainerColor = Color(0xFFEB1555);


// JENIS KELAMIN

// Enum Gender digunakan untuk menentukan
// jenis kelamin pengguna dalam perhitungan BMR.
// Nilai gender memengaruhi rumus Mifflin-St Jeor.
enum Gender {
  male,
  female,
}


// GAYA TEKS LABEL

// Digunakan untuk tulisan seperti
// MALE, FEMALE, HEIGHT, WEIGHT, dan AGE.
const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);


// GAYA TEKS ANGKA INPUT

// Digunakan untuk menampilkan angka
// tinggi badan, berat badan, dan usia.
const numberTextStyle = TextStyle(
  fontSize: 45.0,
  fontWeight: FontWeight.w900,
);


// GAYA TEKS TOMBOL

// Digunakan untuk tulisan pada tombol
// CALCULATE BMR dan RE-CALCULATE.
const buttonTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);


// GAYA TEKS LABEL HASIL

// Digunakan untuk menampilkan tulisan
// YOUR BMR pada halaman hasil perhitungan.
const resultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22,
  fontWeight: FontWeight.bold,
);


// GAYA TEKS ANGKA HASIL BMR

// Digunakan untuk menampilkan angka BMR
// dengan ukuran besar dan huruf tebal.
// Nama bmiTextStyle dipertahankan agar tetap
// kompatibel dengan kode result_page.dart.
const bmiTextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold,
);
