import 'package:flutter/material.dart';
import '../widgets/splash_logo.dart';
import 'package:vinatexmobile/core/constants/app_colors.dart';
import 'package:vinatexmobile/core/constants/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.TRANSPARENT,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.BACKGROUND,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: AppColors.BACKGROUND.withValues(alpha: 0.6),
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SplashLogo(),
                  SizedBox(height: 24),
                  // Nếu muốn thêm text hoặc hiệu ứng splash, thêm tại đây
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
