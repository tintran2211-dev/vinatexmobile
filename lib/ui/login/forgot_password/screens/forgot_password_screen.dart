import 'package:flutter/material.dart';
import '../widgets/forgot_password_logo.dart';
import '../widgets/forgot_password_form.dart';
import 'package:vinatexmobile/core/constants/app_fonts.dart';
import 'package:vinatexmobile/core/constants/app_colors.dart';
import 'package:vinatexmobile/core/constants/app_texts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Nút back góc trái
          Positioned(
            top: 32,
            left: 8,
            child: IconButton(
              icon: Icon(Icons.chevron_left, color: AppColors.BLACK, size: 28),
              onPressed: () {
                Navigator.of(context).pop();
              },
              tooltip: AppTexts.BACK,
            ),
          ),
          // Tiêu đề căn giữa
          Positioned(
            top: 114,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                AppTexts.FORGOT_PASSWORD,
                style: TextStyle(
                  color: const Color(0xFF223F7F),
                  fontSize: 24,
                  fontFamily: AppFonts.SF_PRO_DISPLAY,
                  fontWeight: FontWeight.w700,
                  height: 1.50,
                ),
              ),
            ),
          ),
          // Logo căn giữa
          Positioned(
            top: 174,
            left: 0,
            right: 0,
            child: Center(child: ForgotPasswordLogo()),
          ),
          // Form nhập email căn giữa
          Positioned(
            top: 464,
            left: 0,
            right: 0,
            child: Center(child: ForgotPasswordForm()),
          ),
          // Text hướng dẫn căn giữa
          Positioned(
            top: 518,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 327,
                height: 40,
                child: Text(
                  AppTexts.FORGOT_PASSWORD_HINT,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.NEUTRALS_600,
                    fontSize: 14,
                    fontFamily: AppFonts.ROBOTO,
                    fontWeight: FontWeight.w400,
                    height: 1.57,
                  ),
                ),
              ),
            ),
          ),
          // Nút tiếp tục căn giữa, sát mép dưới
          Positioned(
            left: 0,
            right: 0,
            bottom: 24,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.PRIMARY,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/verify-reset-password');
                  },
                  child: Text(
                    AppTexts.CONTINUE,
                    style: TextStyle(
                      color: AppColors.WHITE,
                      fontSize: 16,
                      fontFamily: AppFonts.SF_PRO_DISPLAY,
                      fontWeight: FontWeight.w600,
                      height: 1.25,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
