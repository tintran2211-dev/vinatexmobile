import 'package:flutter/material.dart';
import 'package:vinatexmobile/core/constants/app_images.dart';

class ForgotPasswordLogo extends StatelessWidget {
  const ForgotPasswordLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 266,
      height: 266,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.FORGOT_PASSWORD),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
