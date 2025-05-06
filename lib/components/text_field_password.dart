import 'package:flutter/material.dart';

import '../resources/app_color.dart';

class CustomTextFieldPassword extends StatefulWidget {
  const CustomTextFieldPassword({
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

  @override
  State<CustomTextFieldPassword> createState() =>
      _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool _obscureText = true;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  static OutlineInputBorder outlineInputBorder(Color color) =>
      OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 1.2),
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboardType,
      onFieldSubmitted: widget.onFieldSubmitted,
      onChanged: widget.onChanged,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      readOnly: widget.readOnly,
      obscureText: _obscureText,
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
        errorText: widget.errorText,
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: AppColor.boder),
        prefixIcon: widget.icon,
        suffixIcon: IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.black,
          ),
          onPressed: _toggleObscureText,
        ),
      ),
    );
  }
}
