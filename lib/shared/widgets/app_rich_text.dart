import 'package:flutter/material.dart';

class AppRichText extends StatelessWidget {
  final List<InlineSpan> spans;
  final TextAlign textAlign;
  final int? maxLines;

  const AppRichText({
    super.key,
    required this.spans,
    this.textAlign = TextAlign.start,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: spans),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
