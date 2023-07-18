import 'package:exercise1/Widgets/colored_pokeball.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
    required Null Function(dynamic value) onSaved,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;

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


class CustomTextFormFieldEmail extends StatelessWidget {
  const CustomTextFormFieldEmail({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
    required Null Function(dynamic value) onSaved,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;

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
