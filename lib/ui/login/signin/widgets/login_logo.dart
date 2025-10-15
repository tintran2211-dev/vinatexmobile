import 'package:flutter/material.dart';
import 'package:vinatexmobile/core/constants/app_images.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 168,
      height: 134,
      child: Image.asset(
        AppImages.LOGO,
        fit: BoxFit.contain,
      ),
    );
  }
}
