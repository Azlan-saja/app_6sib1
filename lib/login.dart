import 'package:app_6sib1/dashboard.dart';
import 'package:app_6sib1/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              const MyTextFormField(
                maxLength: 35,
                keyboardType: TextInputType.emailAddress,
                icon: Icons.email,
                labelText: 'Email',
                helperText: 'Email Harus Aktif',
              ),
              const MyTextFormField(
                maxLength: 8,
                keyboardType: TextInputType.visiblePassword,
                icon: Icons.lock,
                labelText: 'Password',
                helperText: 'Password Harus Gabungan Angka, Huruf dan Karakter',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyElevatedButtonSubmit(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyDashboard(),
                            ));
                      },
                      text: 'Login Now'),
                  MyElevatedButtonCancel(onPressed: () {}, text: 'Ulangi'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
