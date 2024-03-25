import 'package:flutter/material.dart';

// const int warnaTulisan = 0xF0F0F0;
const int warnaThema = 0xFF21205E;
const Color warnaUtama = Color(0xFF21205E);
const Color warnaKedua = Color(0xFFFBC21A);
const Color warnaPutih = Color(0xFFFFFFFF);
const Color warnaHitam = Color(0xFF000000);

class MyTextBesar extends StatelessWidget {
  final String text;
  final Color color;

  const MyTextBesar({
    super.key,
    required this.text,
    this.color = const Color(0xFF21205E),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 38,
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }
}

class MyTextSedang extends StatelessWidget {
  final String text;
  final Color color;

  const MyTextSedang({
    super.key,
    required this.text,
    this.color = const Color(0xFF21205E),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: color,
      ),
    );
  }
}

class MyTextKecil extends StatelessWidget {
  final String text;
  final Color color;

  const MyTextKecil({
    super.key,
    required this.text,
    this.color = const Color(0xFF21205E),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: color,
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final int maxLength;
  final TextInputType? keyboardType;
  final bool obscureText;
  final IconData icon;
  final String labelText, helperText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final int? maxLines;

  const MyTextFormField({
    super.key,
    required this.maxLength,
    this.keyboardType,
    this.obscureText = false,
    required this.icon,
    required this.labelText,
    required this.helperText,
    this.onChanged,
    this.controller,
    this.validator,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      validator: validator,
      controller: controller,
      onChanged: onChanged,
      maxLength: maxLength,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: const TextStyle(
        color: Color(0xFF21205E),
      ),
      decoration: InputDecoration(
        icon: Icon(icon, color: const Color(0xFF21205E)),
        labelText: labelText,
        helperText: helperText,
      ),
    );
  }
}

class MyElevatedButtonSubmit extends StatelessWidget {
  final Function() onPressed;
  final String text;

  const MyElevatedButtonSubmit({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(100, 45),
        backgroundColor: const Color(0xFF21205E),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class MyElevatedButtonCancel extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? color;

  const MyElevatedButtonCancel({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = const Color(0xFFFBC21A),
    this.color = const Color(0xFF21205E),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(100, 45),
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: color,
        ),
      ),
    );
  }
}
