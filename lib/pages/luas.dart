import 'package:app_6sib1/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyLuas extends StatefulWidget {
  const MyLuas({super.key});

  @override
  State<MyLuas> createState() => _MyLuasState();
}

class _MyLuasState extends State<MyLuas> {
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
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MyTextBesar(text: 'Hitung Luas'),
            const MyTextBesar(text: 'Persegi Panjang'),
            const MyTextSedang(text: 'Rumus PxL'),
            MyTextFormField(
              maxLength: 10,
              keyboardType: TextInputType.number,
              icon: Icons.input,
              labelText: 'Nilai Panjang',
              helperText: 'Silahkan Input Nilai Panjang',
              controller: nilaiPanjang,
              validator: (p0) {
                return (p0 == null || p0.isEmpty)
                    ? 'Nilai Panjang Tidak Boleh Kosong!'
                    : null;
              },
            ),
            MyTextFormField(
              maxLength: 10,
              keyboardType: TextInputType.number,
              icon: Icons.input,
              labelText: 'Nilai Lebar',
              helperText: 'Silahkan Input Nilai Lebar',
              controller: nilaiLebar,
              validator: (p0) {
                return (p0 == null || p0.isEmpty)
                    ? 'Nilai Lebar Tidak Boleh Kosong!'
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
                        result = double.parse(nilaiPanjang.text) *
                            double.parse(nilaiLebar.text);
                        hasilLuas.text = result.toString();

                        return showDialog<void>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const MyTextBesar(text: 'Hasil'),
                            content: MyTextKecil(
                                text:
                                    'Panjang x Lebar = Luas\n\n${nilaiPanjang.text} x ${nilaiLebar.text} = ${hasilLuas.text}'),
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
                      nilaiPanjang.clear();
                      nilaiLebar.clear();
                      hasilLuas.clear();
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
