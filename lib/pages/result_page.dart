
import 'package:flutter/material.dart';

import '../components/custom_card.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

// Halaman untuk menampilkan hasil perhitungan BMR.
class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.result,
    required this.bmr,
    required this.information,
    required this.activityCalories,
  });

  // Data yang diterima dari InputPage.
  final String result;
  final String bmr;
  final String information;

  // Data kebutuhan kalori untuk setiap tingkat aktivitas.
  final Map<String, double> activityCalories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMR CALCULATOR'),
      ),

      // Membuat halaman dapat digulir ke bawah.
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  // Judul halaman hasil.
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Your BMR Result',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Kartu hasil BMR.
                  CustomCard(
                    color: activeCardColor,
                    cardChild: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            result,
                            style: resultTextStyle,
                          ),

                          const SizedBox(height: 20.0),

                          // Menampilkan angka BMR.
                          Text(
                            bmr,
                            style: bmiTextStyle,
                          ),

                          const Text(
                            'kcal/day',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white70,
                            ),
                          ),

                          const SizedBox(height: 20.0),

                          // Penjelasan hasil BMR.
                          Text(
                            information,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Judul tabel aktivitas.
                  const Padding(
                    padding: EdgeInsets.fromLTRB(
                      20.0, 25.0, 20.0, 15.0,
                    ),
                    child: Text(
                      'Daily Calorie Needs Based on Activity Level',
                      style: TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Tabel kebutuhan kalori harian.
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    child: Table(
                      border: TableBorder.all(
                        color: Colors.white24,
                        width: 1.0,
                      ),

                      // Kolom pertama lebih lebar untuk nama aktivitas.
                      columnWidths: const {
                        0: FlexColumnWidth(3),
                        1: FlexColumnWidth(1.4),
                      },

                      children: [

                        // Header tabel.
                        TableRow(
                          decoration: const BoxDecoration(
                            color: Color(0xFFEB1555),
                          ),
                          children: [
                            _buildTableCell(
                              'Activity Level',
                              isHeader: true,
                            ),
                            _buildTableCell(
                              'Calories/day',
                              isHeader: true,
                            ),
                          ],
                        ),

                        // Membuat baris berdasarkan data aktivitas.
                        ...activityCalories.entries.map(
                          (entry) {
                            return TableRow(
                              decoration: const BoxDecoration(
                                color: Color(0xFF1D1E33),
                              ),
                              children: [
                                _buildTableCell(entry.key),
                                _buildTableCell(
                                  entry.value.toStringAsFixed(0),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  // Keterangan aktivitas.
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Exercise: 15-30 minutes of elevated '
                      'heart rate activity.\n\n'
                      'Intense exercise: 45-120 minutes '
                      'of elevated heart rate activity.\n\n'
                      'Very intense exercise: 2+ hours '
                      'of elevated heart rate activity.',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Tombol untuk kembali ke halaman input.
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat isi sel tabel.
  Widget _buildTableCell(
    String text, {
    bool isHeader = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: isHeader ? 14.0 : 13.0,
          fontWeight: isHeader
              ? FontWeight.bold
              : FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}
