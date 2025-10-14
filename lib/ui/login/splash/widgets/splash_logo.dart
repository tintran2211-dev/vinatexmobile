import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 239,
      child: Image.asset(
        'assets/images/vinatexlogo1.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
