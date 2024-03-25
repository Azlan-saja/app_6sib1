import 'package:app_6sib1/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyVolume extends StatefulWidget {
  const MyVolume({super.key});

  @override
  State<MyVolume> createState() => _MyVolumeState();
}

class _MyVolumeState extends State<MyVolume> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nilaiPanjang = TextEditingController();
  TextEditingController nilaiLebar = TextEditingController();
  TextEditingController hasilLuas = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nilaiPanjang.clear();
    nilaiLebar.clear();
    hasilLuas.clear();
  }

  @override
  Widget build(BuildContext context) {
     return const Center(
      child: MyTextBesar(text: 'Layer Volume'),
    );
  }
}
