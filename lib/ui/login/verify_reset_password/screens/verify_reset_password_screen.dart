import 'package:flutter/material.dart';
import '../widgets/verify_reset_password_info.dart';
import '../widgets/verify_reset_password_button.dart';
import 'package:vinatexmobile/core/constants/app_images.dart';
import 'package:vinatexmobile/core/constants/app_fonts.dart';
import 'package:vinatexmobile/core/constants/app_colors.dart';
import 'package:vinatexmobile/core/constants/app_texts.dart';

class VerifyResetPasswordScreen extends StatelessWidget {
  const VerifyResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Nút back góc trái
          Positioned(
            top: 32,
            left: 8,
            child: IconButton(
              icon: Icon(Icons.chevron_left, color: Colors.black, size: 28),
              onPressed: () {
                Navigator.of(context).pop();
              },
              tooltip: AppTexts.BACK,
            ),
          ),
          // Ảnh verify password phía trên tiêu đề
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                AppImages.VERIFY_IMAGE,
                width: 333,
                height: 246,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Tiêu đề
          Positioned(
            top: 390.43,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                AppTexts.VERIFY_EMAIL,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.VERIFY_EMAIL_TEXT,
                  fontSize: 20,
                  fontFamily: AppFonts.ROBOTO,
                  fontWeight: FontWeight.w700,
                  height: 1.50,
                ),
              ),
            ),
          ),
          // Thông tin email
          Positioned(
            top: 428.43,
            left: 32,
            right: 32,
            child: VerifyResetPasswordInfo(),
          ),
          // Nút quay về đăng nhập
          Positioned(
            top: 591.43,
            left: 16,
            right: 16,
            child: VerifyResetPasswordButton(),
          ),
          // Text gửi lại sát mép dưới
          Positioned(
            left: 0,
            right: 0,
            bottom: 24,
            child: Center(
              child: SizedBox(
                width: 250,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: AppTexts.VERIFY_EMAIL_HINT,
                        style: TextStyle(
                          color: AppColors.BLACK,
                          fontSize: 14,
                          fontFamily: AppFonts.ROBOTO,
                          fontWeight: FontWeight.w400,
                          height: 1.57,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: AppColors.GREY,
                          fontSize: 14,
                          fontFamily: AppFonts.ROBOTO,
                          fontWeight: FontWeight.w400,
                          height: 1.57,
                        ),
                      ),
                      TextSpan(
                        text: AppTexts.RESEND,
                        style: TextStyle(
                          color: AppColors.PRIMARY,
                          fontSize: 14,
                          fontFamily: AppFonts.ROBOTO,
                          fontWeight: FontWeight.w700,
                          height: 1.57,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
