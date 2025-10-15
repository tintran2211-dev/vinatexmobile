import 'package:flutter/material.dart';

class AppErrorMessage extends StatelessWidget {
  final String message;
  final Color? color;
  final IconData? icon;
  final double iconSize;
  final TextStyle? textStyle;
  final double spacing;

  const AppErrorMessage({
    super.key,
    required this.message,
    this.color,
    this.icon,
    this.iconSize = 16,
    this.textStyle,
    this.spacing = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (icon != null)
          Icon(icon, color: color, size: iconSize),
        if (icon != null)
          SizedBox(width: spacing),
        Text(
          message,
          style: textStyle?.copyWith(color: color) ?? TextStyle(color: color, fontSize: 12),
        ),
      ],
    );
  }
}
