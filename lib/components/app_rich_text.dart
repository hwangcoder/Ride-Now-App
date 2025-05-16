import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../resources/theme/app_colors.dart';
import '../resources/theme/app_styles.dart';

class AppRichText extends StatelessWidget {
  const AppRichText({
    super.key,
    required this.normalText,
    required this.spanText,
    this.textStyle,
    this.spanTextStyle,
    this.onTap,
  });

  final String normalText;
  final String spanText;
  final TextStyle? textStyle;
  final TextStyle? spanTextStyle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: textStyle ?? AppStyles.kTextStyle12.copyWith(color: AppColors.color000000),
        children: [
          TextSpan(text: '$normalText '),
          TextSpan(
            text: spanText,
            style: spanTextStyle ??
                AppStyles.kTextStyle12.copyWith(
                  color: AppColors.color312F2F,
                  decoration: TextDecoration.underline,
                ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
