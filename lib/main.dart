import 'package:exercise1/View/tampilanawal.dart';
import 'package:flutter/material.dart';

/// Fungsi utama yang akan dijalankan saat aplikasi dimulai.
void main() {
  runApp(const MyApp());
}

/// MyApp adalah widget utama yang mewakili aplikasi Flutter.
class MyApp extends StatelessWidget {
  /// Konstruktor MyApp yang mengambil argumen super.key, tetapi tampaknya terdapat kesalahan sintaks. Seharusnya bukan `super.key`, tetapi `this.key`.
  const MyApp({super.key});

  /// Metode build yang digunakan untuk membangun tampilan aplikasi.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Menghilangkan tanda debug yang muncul di sudut kanan atas aplikasi.
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TampilanAwal(),
    );
  }
}
