import 'package:flutter/material.dart';

class ColouredPokeball extends StatelessWidget {
  /// Konstruktor ColouredPokeball yang mengambil argumen key, color, width, dan opacity.
  const ColouredPokeball({
    Key? key,
    required this.color,
    required this.width,
    required this.opacity,
  }) : super(key: key);
  // Color color digunakan untuk mengatur warna gambar.
  final Color color;
  // double width digunakan untuk mengatur lebar gambar.
  final double width;
  // double opacity digunakan untuk mengatur opacity gambar.
  final double opacity;

///Widget build digunakan untuk membangun tampilan aplikasi.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ColorFiltered(
        colorFilter:
            ColorFilter.mode(color.withOpacity(opacity), BlendMode.modulate),
        child: Image.network(
          'https://icon-library.com/images/pokeball-icon-transparent/pokeball-icon-transparent-5.jpg',
          width: width,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}