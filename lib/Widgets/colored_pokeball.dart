import 'package:flutter/material.dart';

class ColouredPokeball extends StatelessWidget {
  const ColouredPokeball({
    Key? key,
    required this.color,
    required this.width,
    required this.opacity,
  }) : super(key: key);
  final Color color;
  final double width;
  final double opacity;

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