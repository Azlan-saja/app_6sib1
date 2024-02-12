import 'package:app_6sib1/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi 6SIB1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyLogin(),
    );
  }
}
