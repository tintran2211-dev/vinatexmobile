import 'package:flutter/material.dart';
import 'package:vinatexmobile/core/constants/app_fonts.dart';
import 'package:vinatexmobile/core/constants/app_colors.dart';
import 'package:vinatexmobile/core/constants/app_texts.dart';

class VerifyResetPasswordInfo extends StatelessWidget {
  const VerifyResetPasswordInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: AppTexts.FORGOT_PASSWORD_SUCCESS,
            style: TextStyle(
              color: AppColors.GREY,
              fontSize: 14,
              fontFamily: AppFonts.ROBOTO,
              fontWeight: FontWeight.w400,
              height: 1.57,
            ),
          ),
          TextSpan(
            text: AppTexts.SEPARATION,
            style: TextStyle(
              color: AppColors.ICON_VISIBILITY_PASSWORD,
              fontSize: 14,
              fontFamily: AppFonts.ROBOTO,
              fontWeight: FontWeight.w400,
              height: 1.57,
            ),
          ),
          TextSpan(
            text: 'dungdung93@gmail.com',
            style: TextStyle(
              color: AppColors.BLACK,
              fontSize: 14,
              fontFamily: AppFonts.ROBOTO,
              fontWeight: FontWeight.w500,
              height: 1.57,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
