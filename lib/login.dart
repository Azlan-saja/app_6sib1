import 'package:app_6sib1/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MyTextSedang(text: 'Hey,'),
          const MyTextBesar(text: 'Login Now!'),
          const MyTextKecil(text: 'Gunakan email dan password anda!'),
          MyTextFormField(
            onChanged: (value) {},
            keyboardType: TextInputType.emailAddress,
            maxLength: 35,
            labelText: 'Email',
            helperText: 'Email Harus Aktif',
            icon: Icons.email,
          ),
          MyTextFormField(
            obscureText: true,
            onChanged: (value) {},
            keyboardType: TextInputType.visiblePassword,
            maxLength: 8,
            labelText: 'Password',
            helperText: 'Password Harus Unik',
            icon: Icons.lock,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Login Now')),
        ],
      ),
    );
  }
}
