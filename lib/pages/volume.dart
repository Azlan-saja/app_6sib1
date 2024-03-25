import 'package:app_6sib1/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyVolume extends StatefulWidget {
  const MyVolume({super.key});

  @override
  State<MyVolume> createState() => _MyVolumeState();
}

class _MyVolumeState extends State<MyVolume> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nilaiJarijari = TextEditingController();
  final TextEditingController nilaiTinggi = TextEditingController();
  final TextEditingController hasilVolume = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MyTextBesar(text: 'Hitung Volume'),
            const MyTextBesar(text: 'Tabung'),
            const MyTextSedang(text: 'Rumus π x r² x t'),
            MyTextFormField(
              maxLength: 10,
              keyboardType: TextInputType.number,
              icon: Icons.input,
              labelText: 'Nilai Jari-jari',
              helperText: 'Silahkan Input Nilai Jari-jari',
              controller: nilaiJarijari,
              validator: (p0) {
                return (p0 == null || p0.isEmpty)
                    ? 'Nilai Jari-jari Tidak Boleh Kosong!'
                    : null;
              },
            ),
            MyTextFormField(
              maxLength: 10,
              keyboardType: TextInputType.number,
              icon: Icons.input,
              labelText: 'Nilai Tinggi',
              helperText: 'Silahkan Input Nilai Tinggi',
              controller: nilaiTinggi,
              validator: (p0) {
                return (p0 == null || p0.isEmpty)
                    ? 'Nilai Tinggi Tidak Boleh Kosong!'
                    : null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyElevatedButtonSubmit(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        double result = 0;
                        result = 3.14 *
                            (double.parse(nilaiJarijari.text) *
                                double.parse(nilaiJarijari.text)) *
                            double.parse(nilaiTinggi.text);
                        hasilVolume.text = result.toString();

                        return showDialog<void>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const MyTextBesar(text: 'Hasil'),
                            content: MyTextKecil(
                                text:
                                    'π x r² x t = Volume\n\n 3.14 x ( ${nilaiJarijari.text} x ${nilaiJarijari.text} ) x ${nilaiTinggi.text} = ${hasilVolume.text}'),
                            actions: <TextButton>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Close'),
                              )
                            ],
                          ),
                        );
                      }
                      // print(nilaiPanjang * nilaiLebar);
                    },
                    text: 'Hitung'),
                MyElevatedButtonCancel(
                    onPressed: () {
                      nilaiJarijari.clear();
                      nilaiTinggi.clear();
                      hasilVolume.clear();
                    },
                    text: 'Ulangi'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
