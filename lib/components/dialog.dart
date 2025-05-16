import 'package:ride_now/resources/theme/app_color.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onConfirm;
  final String? imagePath;
  final double? width;
  final double? height;
  final double? buttonHeight;
  final double? buttonwidth;

  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onConfirm,
    this.imagePath,
    this.width,
    this.height,
    this.buttonHeight = 56,
    this.buttonwidth = 356,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      contentPadding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      content: IntrinsicHeight(
        child: SizedBox(
          width: width ?? screenSize.width * 0.8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (imagePath != null) ...[
                Image.asset(
                  imagePath!,
                  height: 64,
                  width: 64,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 12),
              ],
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      actionsPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        SizedBox(
          width: buttonwidth,
          height: buttonHeight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.brand,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onPressed: onConfirm,
            child: Text(
              buttonText,
              style: const TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ),
      ],
    );
  }
}
