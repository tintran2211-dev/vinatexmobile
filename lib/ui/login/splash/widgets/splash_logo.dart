import 'package:flutter/material.dart';
import 'package:vinatexmobile/core/constants/app_images.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 239,
      child: Image.asset(
        AppImages.LOGO,
        fit: BoxFit.contain,
      ),
    );
  }
}
