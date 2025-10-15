import 'package:flutter/material.dart';
import 'package:vinatexmobile/core/constants/app_colors.dart';
import 'package:vinatexmobile/core/constants/app_fonts.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double borderRadius;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final double? width;
  final BorderSide? border;
  final String? fontFamily;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.borderRadius = 12,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w700,
    this.height = 40,
    this.width,
    this.border,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.PRIMARY,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: border ?? BorderSide.none,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor ?? AppColors.WHITE,
            fontSize: fontSize,
            fontFamily: fontFamily ?? AppFonts.ROBOTO,
            fontWeight: fontWeight,
            height: 1.30,
          ),
        ),
      ),
    );
  }
}
