import 'package:flutter/material.dart';
import 'package:vinatexmobile/core/constants/app_fonts.dart';
import 'package:vinatexmobile/core/constants/app_colors.dart';
import 'package:vinatexmobile/core/constants/app_texts.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _rememberMe = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Vùng đăng nhập rộng hơn
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 32),
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: AppColors.BACKGROUND.withValues(alpha: 0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppTexts.LOGIN_TITLE,
            style: TextStyle(
              color: AppColors.WHITE,
              fontSize: 24,
              fontFamily: AppFonts.ROBOTO,
              fontWeight: FontWeight.w700,
              height: 1.30,
            ),
          ),
          SizedBox(height: 8),
          Text(
            AppTexts.LOGIN_HINT,
            style: TextStyle(
              color: AppColors.WHITE,
              fontSize: 13,
              fontFamily: AppFonts.ROBOTO,
              fontWeight: FontWeight.w400,
              height: 1.30,
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 1,
            decoration: ShapeDecoration(
              color: AppColors.WHITE,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: AppTexts.USERNAME_LABEL,
                    style: TextStyle(
                      color: AppColors.WHITE,
                      fontSize: 12,
                      fontFamily: AppFonts.ROBOTO,
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: AppColors.ERROR,
                      fontSize: 12,
                      fontFamily: AppFonts.ROBOTO,
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 4),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.WHITE,
              contentPadding: const EdgeInsets.all(10),
              //hintText: 'Nhập tài khoản',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: AppColors.INPUT_LOGIN,
                  width: 1,
                ),
              ),
            ),
            style: TextStyle(color: AppColors.BACKGROUND),
          ),
          SizedBox(height: 4),
          // Hiển thị lỗi tài khoản
          Row(
            children: [
              Icon(Icons.error, color: AppColors.ERROR, size: 16),
              SizedBox(width: 4),
              Text(
                AppTexts.USERNAME_ERROR,
                style: TextStyle(color: AppColors.ERROR, fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: AppTexts.PASSWORD_LABEL,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: AppFonts.SF_PRO_DISPLAY,
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: AppColors.ERROR,
                      fontSize: 12,
                      fontFamily: AppFonts.SF_PRO_DISPLAY,
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 4),
          TextField(
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.WHITE,
              contentPadding: const EdgeInsets.all(10),
              //hintText: 'Nhập mật khẩu',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: AppColors.INPUT_LOGIN,
                  width: 1,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.ICON_VISIBILITY_PASSWORD,
                ),
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              ),
            ),
            style: TextStyle(color: AppColors.BLACK),
          ),
          SizedBox(height: 4),
          // Hiển thị lỗi mật khẩu
          Row(
            children: [
              Icon(Icons.error, color: AppColors.RED, size: 16),
              SizedBox(width: 4),
              Text(
                AppTexts.PASSWORD_ERROR,
                style: TextStyle(color: AppColors.RED, fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value ?? false;
                      });
                    },
                    activeColor: AppColors.WHITE,
                    checkColor: AppColors.PRIMARY,
                    side: BorderSide(
                      color: AppColors.INPUT_BORDER,
                      width: 1.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                  ),
                  SizedBox(width: 4),
                  Text(
                    AppTexts.REMEMBER_ME,
                    style: TextStyle(
                      color: AppColors.WHITE,
                      fontSize: 12,
                      fontFamily: AppFonts.ROBOTO,
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/forgot-password');
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 2,
                      ), // 👈 khoảng cách giữa chữ và gạch
                      child: Text(
                        AppTexts.FORGOT_PASSWORD,
                        style: const TextStyle(
                          color: AppColors.WHITE,
                          fontSize: 12,
                          fontFamily: AppFonts.ROBOTO,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 1, // độ dày gạch
                      width:
                          85, // độ dài, có thể đổi thành double.infinity nếu muốn full text
                      color: AppColors.WHITE,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.PRIMARY,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text(
                AppTexts.LOGIN_BUTTON,
                style: TextStyle(
                  color: AppColors.WHITE,
                  fontSize: 16,
                  fontFamily: AppFonts.ROBOTO,
                  fontWeight: FontWeight.w700,
                  height: 1.30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
