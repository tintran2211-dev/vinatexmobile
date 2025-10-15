import 'package:flutter/material.dart';
import 'package:vinatexmobile/core/constants/app_fonts.dart';
import 'package:vinatexmobile/core/constants/app_colors.dart';
import 'package:vinatexmobile/core/constants/app_texts.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327,
      child: TextField(
        decoration: InputDecoration(
          labelText: AppTexts.EMAIL_LABEL,
          labelStyle: TextStyle(
            color: AppColors.ICON_VISIBILITY_PASSWORD,
            fontSize: 14,
            fontFamily: AppFonts.ROBOTO,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.INPUT_BORDER,
              width: 1,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.PRIMARY,
              width: 2,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 8),
        ),
        style: TextStyle(
          color: AppColors.PRIMARY,
          fontSize: 14,
          fontFamily: AppFonts.ROBOTO,
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
