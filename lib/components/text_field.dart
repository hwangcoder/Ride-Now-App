import 'package:flutter/material.dart';

import '../resources/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.hintText,
    this.onFieldSubmitted,
    this.onChanged,
    this.textInputAction,
    this.validator,
    this.readOnly = false,
    this.errorText,
    this.icon,
    this.suffixIcon,
    this.isPassword = false,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final String? hintText;
  final Function(String)? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final bool readOnly;
  final String? errorText;
  final Icon? icon;
  final Icon? suffixIcon;
  final bool isPassword;

  // Định nghĩa outlineInputBorder ngoài build để tối ưu
  static OutlineInputBorder outlineInputBorder(Color color) =>
      OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 1.2),
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      textInputAction: textInputAction,
      validator: validator,
      readOnly: readOnly,
      obscureText: isPassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.6),
        filled: true,
        fillColor: Colors.white,
        border: outlineInputBorder(AppColor.boder),
        focusedBorder: outlineInputBorder(AppColor.brand),
        enabledBorder: outlineInputBorder(AppColor.boder),
        errorBorder: outlineInputBorder(Colors.red),
        disabledBorder: outlineInputBorder(AppColor.boder),
        errorText: errorText,
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColor.boder),
        prefixIcon: icon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
