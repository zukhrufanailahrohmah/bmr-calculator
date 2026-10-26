
import 'constants.dart';

// Class untuk menghitung BMR dan kebutuhan kalori harian.
class Calculator {
  // Constructor menerima data pengguna dari InputPage.
  Calculator({
    required this.height,
    required this.weight,
    required this.age,
    required this.gender,
  });

  // Data pengguna.
  final int height;
  final int weight;
  final int age;
  final Gender gender;

  // Variabel untuk menyimpan hasil perhitungan BMR.
  double _bmr = 0.0;

  // Menghitung BMR menggunakan rumus Mifflin-St Jeor.
  String calculateBMR() {
    if (gender == Gender.male) {
      // Rumus BMR laki-laki.
      _bmr = (10 * weight) +
          (6.25 * height) -
          (5 * age) +
          5;
    } else {
      // Rumus BMR perempuan.
      _bmr = (10 * weight) +
          (6.25 * height) -
          (5 * age) -
          161;
    }

    // Mengembalikan BMR dengan satu angka desimal.
    return _bmr.toStringAsFixed(1);
  }

  // Memberikan label hasil perhitungan.
  String getResult() {
    return 'YOUR BMR';
  }

  // Memberikan penjelasan mengenai hasil BMR.
  String getInterpretation() {
    return 'Your body needs approximately '
        '${_bmr.toStringAsFixed(1)} calories per day '
        'at rest to maintain basic functions such as '
        'breathing, circulation, and body temperature.';
  }

  // Menghitung kebutuhan kalori harian.
  // Rumus: BMR dikalikan faktor aktivitas.
  double calculateDailyCalories(double activityFactor) {
    return _bmr * activityFactor;
  }

  // Menyediakan enam tingkat aktivitas.
  // Faktor aktivitas digunakan untuk memperkirakan
  // kebutuhan kalori harian.
  Map<String, double> getActivityCalories() {
    return {
      'Sedentary (little or no exercise)':
          calculateDailyCalories(1.2),

      'Exercise 1-3 times/week':
          calculateDailyCalories(1.375),

      'Exercise 4-5 times/week':
          calculateDailyCalories(1.465),

      'Daily exercise / intense exercise 3-4 times/week':
          calculateDailyCalories(1.55),

      'Intense exercise 6-7 times/week':
          calculateDailyCalories(1.725),

      'Very intense exercise / physical job':
          calculateDailyCalories(1.9),
    };
  }
}
