import 'package:flutter/material.dart';
import 'package:vinatexmobile/core/constants/app_fonts.dart';
import 'package:vinatexmobile/core/constants/app_colors.dart';
import 'package:vinatexmobile/core/constants/app_texts.dart';

class VerifyResetPasswordButton extends StatelessWidget {
  const VerifyResetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1A88D8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/login');
        },
        child: Text(
          AppTexts.BACK_TO_LOGIN,
          style: TextStyle(
            color: AppColors.WHITE,
            fontSize: 16,
            fontFamily: AppFonts.SF_PRO_DISPLAY,
            fontWeight: FontWeight.w600,
            height: 1.25,
          ),
        ),
      ),
    );
  }
}
