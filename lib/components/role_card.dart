import 'package:flutter/material.dart';

class RoleCard extends StatelessWidget {
  final String? title;
  final String? imagePath;
  final VoidCallback? onTap;
  final Color? color;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final bool? isSelected;

  const RoleCard({
    super.key,
    this.title,
    this.imagePath,
    this.onTap,
    this.color,
    this.borderColor = const Color(0xFFDDDDE5),
    this.borderRadius,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final Color color = isSelected! ? const Color(0xFFE6F9FA) : Colors.white;
    final Color borderColor =
        isSelected! ? const Color(0xFF2BC1BB) : const Color(0xFFDDDDE5);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 359,
        height: 144,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: borderColor,
            width: 1.2,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(16.0),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (imagePath != null)
                    Image.asset(
                      imagePath!,
                      width: 80,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  const SizedBox(height: 8),
                  Text(
                    title ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 16.0,
              top: 0,
              bottom: 0,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: isSelected == true
                      ? const Icon(
                          Icons.radio_button_checked,
                          size: 24.0,
                          color: Colors.teal,
                        )
                      : const Icon(
                          Icons.radio_button_unchecked,
                          size: 24.0,
                          color: Colors.teal,
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoleCardModel {
  final String? title;
  final String? imagePath;
  bool isSelected;

  RoleCardModel({
    this.title,
    this.imagePath,
    this.isSelected = false,
  });
}
