import 'package:app_6sib1/dashboard.dart';
import 'package:app_6sib1/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const MyTextSedang(text: 'Hey,'),
                const MyTextBesar(text: 'Login Now!'),
                const MyTextKecil(text: 'Jangan Lupa Tersenyum, vroh.'),
                const SizedBox(
                  height: 25,
                ),
                MyTextFormField(
                    controller: email,
                    maxLength: 35,
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.email,
                    labelText: 'Email',
                    helperText: 'Email Harus Aktif',
                    validator: (p0) {
                      return (p0 == null || p0.isEmpty)
                          ? 'Email Tidak Boleh Kosong!'
                          : null;
                    }),
                MyTextFormField(
                    controller: password,
                    maxLength: 8,
                    keyboardType: TextInputType.visiblePassword,
                    icon: Icons.lock,
                    labelText: 'Password',
                    helperText:
                        'Password Harus Gabungan Angka, Huruf dan Karakter',
                    validator: (p0) {
                      return (p0 == null || p0.isEmpty)
                          ? 'Password Tidak Boleh Kosong!'
                          : null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyElevatedButtonSubmit(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            if (email.text == 'azlansaja19@gmail.com' &&
                                password.text == '12345678') {
                              // Login Berhasil
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MyDashboard(),
                                  ));
                            } else {
                              // Login Gagal
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: warnaError,
                                  content: Row(
                                    children: const [
                                      Icon(
                                        Icons.dangerous_outlined,
                                        size: 24,
                                        color: warnaPutih,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      MyTextSedang(
                                        text: 'Email dan Password Salah.',
                                        color: warnaPutih,
                                      ),
                                    ],
                                  ),
                                ),
                              );

                              // return showDialog<void>(
                              //   context: context,
                              //   builder: (BuildContext context) => AlertDialog(
                              //     title: const MyTextBesar(text: 'Informasi'),
                              //     content: const MyTextKecil(
                              //         text: 'Email dan Password Salah!'),
                              //     actions: <TextButton>[
                              //       TextButton(
                              //         onPressed: () {
                              //           Navigator.pop(context);
                              //         },
                              //         child: const Text('Close'),
                              //       )
                              //     ],
                              //   ),
                              // );
                            }
                          }
                        },
                        text: 'Login Now'),
                    MyElevatedButtonCancel(
                        onPressed: () {
                          email.clear();
                          password.clear();
                        },
                        text: 'Ulangi'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
