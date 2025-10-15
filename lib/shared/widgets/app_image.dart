import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final String assetPath;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  const AppImage({
    super.key,
    required this.assetPath,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final image = Image.asset(
      assetPath,
      width: width,
      height: height,
      fit: fit,
    );
    if (borderRadius != null) {
      return ClipRRect(
        borderRadius: borderRadius as BorderRadiusGeometry,
        child: image,
      );
    }
    return image;
  }
}
