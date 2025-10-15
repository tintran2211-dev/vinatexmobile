import 'package:flutter/material.dart';
import 'package:vinatexmobile/core/constants/app_images.dart';
import 'package:vinatexmobile/core/constants/app_fonts.dart';
import 'package:vinatexmobile/core/constants/app_colors.dart';
import 'package:vinatexmobile/core/constants/app_texts.dart';
import '../widgets/login_logo.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACKGROUND.withValues(alpha: 0.0),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.BACKGROUND,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: AppColors.BACKGROUND.withValues(alpha: 0.6),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                padding: EdgeInsets.only(
                  top: 32,
                  bottom: 0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    LoginLogo(),
                    SizedBox(height: 24),
                    LoginForm(),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).padding.bottom + 10,
            child: Center(
              child: Text(
                AppTexts.VERSION,
                style: TextStyle(
                  color: AppColors.WHITE,
                  fontSize: 12,
                  fontFamily: AppFonts.ROBOTO,
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
