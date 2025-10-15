import 'package:flutter/material.dart';

class AppFormField extends StatelessWidget {
  final String? labelText;
  final TextStyle? labelStyle;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final EdgeInsetsGeometry? contentPadding;
  final bool enabled;
  final String? errorText;
  final int? maxLength;
  final int? maxLines;
  final ValueChanged<String>? onChanged;

  const AppFormField({
    super.key,
    this.labelText,
    this.labelStyle,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.hintStyle,
    this.textStyle,
    this.enabledBorder,
    this.focusedBorder,
    this.contentPadding,
    this.enabled = true,
    this.errorText,
    this.maxLength,
    this.maxLines = 1,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: textStyle,
      enabled: enabled,
      maxLength: maxLength,
      maxLines: maxLines,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: labelStyle,
        hintText: hintText,
        hintStyle: hintStyle,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
        contentPadding: contentPadding,
        errorText: errorText,
        counterText: '', // Ẩn bộ đếm ký tự nếu không cần
      ),
    );
  }
}
