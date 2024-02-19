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
          const Text('Hey,'),
          const Text('Login Now!'),
          const Text('Gunakan email dan password anda!'),
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: () {}, child: const Text('Login Now')),
        ],
      ),
    );
  }
}
