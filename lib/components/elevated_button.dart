import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final double? height;
  final Icon? icon;
  final String text;
  final Color textColor;
  final double fontSize;
  final Color? color;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.white,
    this.height = 56.0,
    this.icon,
    required this.textColor,
    required this.fontSize,
    this.borderColor = const Color(0xFF2BC1BB),
    this.borderRadius,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        height: height,
        decoration: BoxDecoration(
          color: color,
          border:
              Border.all(color: borderColor ?? Colors.transparent, width: 1.2),
          borderRadius: borderRadius ?? BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              icon!,
              const SizedBox(width: 4.0),
            ],
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
