import 'package:exercise1/Widgets/colored_pokeball.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  /// Konstruktor CustomTextFormField yang mengambil argumen key, controller, hintText, obscureText, icon, dan onSaved.
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
    required Null Function(dynamic value) onSaved,
  }) : super(key: key);
  /// TextEditingController controller digunakan untuk mengontrol inputan dari form.
  final TextEditingController controller;
  /// String hintText digunakan untuk menampilkan hint pada form.
  final String hintText;
  /// bool obscureText digunakan untuk mengatur apakah text yang diinputkan akan ditampilkan atau disembunyikan.
  final bool obscureText;
  /// IconData icon digunakan untuk menampilkan icon pada form.
  final IconData icon;

///Widget build ini berfungsi untuk membangun tampilan aplikasi dengan menggunakan TextFormField. TextFormField adalah widget yang digunakan untuk membuat form yang dapat menerima inputan dari user. TextFormField memiliki beberapa properti yang dapat digunakan untuk mengatur tampilan form, seperti controller, decoration, validator, dan lain-lain. 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyText1,
          prefixIcon: Icon(icon, color: Colors.blue),
          suffixIcon:
              const ColouredPokeball(color: Colors.blue, width: 20, opacity: 1),
        ), //membuat validasi untuk form
        validator: (value) {
          if (value == null || value.isEmpty) {
            //return 'Please enter your name';
            return 'Please enter your name';
          }
          return null;
        },
      ),
    );
  }
}

/// CustomTextFormFieldEmail adalah class yang digunakan untuk membuat form email.
class CustomTextFormFieldEmail extends StatelessWidget {
  /// Konstruktor CustomTextFormFieldEmail yang mengambil argumen key, controller, hintText, obscureText, icon, dan onSaved.
  const CustomTextFormFieldEmail({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
    required Null Function(dynamic value) onSaved,
  }) : super(key: key);
  /// TextEditingController controller digunakan untuk mengontrol inputan dari form.
  final TextEditingController controller;
  /// String hintText digunakan untuk menampilkan hint pada form.
  final String hintText;
  /// bool obscureText digunakan untuk mengatur apakah text yang diinputkan akan ditampilkan atau disembunyikan.
  final bool obscureText;
  /// IconData icon digunakan untuk menampilkan icon pada form.
  final IconData icon;

///Widget build ini berfungsi untuk membangun tampilan aplikasi dengan menggunakan TextFormField. TextFormField adalah widget yang digunakan untuk membuat form yang dapat menerima inputan dari user. TextFormField memiliki beberapa properti yang dapat digunakan untuk mengatur tampilan form, seperti controller, decoration, validator, dan lain-lain.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyText1,
          prefixIcon: const Icon(Icons.email, color: Colors.blue),
          suffixIcon:
              const ColouredPokeball(color: Colors.blue, width: 20, opacity: 1),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          } else if (!value.contains('@')) {
            return 'Please enter a valid email address';
          }
          return null;
        },
      ),
    );
  }
}
