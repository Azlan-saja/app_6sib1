import 'package:flutter/material.dart';

class MyTextBesar extends StatelessWidget {
  final String text;

  const MyTextBesar({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

class MyTextSedang extends StatelessWidget {
  final String text;

  const MyTextSedang({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class MyTextKecil extends StatelessWidget {
  final String text;

  const MyTextKecil({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w200,
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final bool obscureText;
  final Function(String)? onChanged;
  final TextInputType keyboardType;
  final int maxLength;
  final String labelText, helperText;
  final IconData icon;

  const MyTextFormField({
    super.key,
    this.obscureText = false,
    required this.onChanged,
    required this.keyboardType,
    required this.maxLength,
    required this.labelText,
    required this.helperText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChanged,
      keyboardType: keyboardType,
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: labelText,
        helperText: helperText,
        icon: Icon(icon),
      ),
    );
  }
}
