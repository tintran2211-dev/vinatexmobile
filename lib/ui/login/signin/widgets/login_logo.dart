import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 134,
      child: Image.asset(
        'assets/images/vinatexlogo1.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
