import 'package:flutter/material.dart';
import '../../resources/theme/app_colors.dart';
import '../../resources/theme/app_styles.dart';
import '../app_rich_text.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final String? hintText;
  final bool isPassword;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;
  final bool enabled;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final String? textError;
  final TextStyle? style;
  final TextStyle? hintTextStyle;
  final int maxLength;
  final String? label;
  final TextStyle? labelTextStyle;
  final bool isRequired;
  final bool hasBorder;
  final double? radius;
  final bool readOnly;
  final Function()? onTap;
  final TextInputAction? textInputAction;

  const AppTextField(
      {super.key,
      required this.controller,
      this.hintText,
      this.isPassword = false,
      this.prefixIcon,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.enabled = true,
      this.height,
      this.focusNode,
      this.suffixIcon,
      this.onChanged,
      this.contentPadding,
      this.textError,
      this.style,
      this.hintTextStyle,
      this.maxLength = 255,
      this.label,
      this.labelTextStyle,
      this.isRequired = false,
      this.hasBorder = true,
      this.radius,
      this.readOnly = false,
      this.onTap,
      this.textInputAction = TextInputAction.next});

  @override
  State<AppTextField> createState() => _CommonAppTextFieldState();
}

class _CommonAppTextFieldState extends State<AppTextField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    if (!widget.isPassword) {
      _obscureText = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder(Color color) => OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.textError?.isNotEmpty == true
                ? AppColors.errorText
                : color,
          ),
          borderRadius: BorderRadius.circular(widget.radius ?? 10),
        );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(),
        SizedBox(
          height: widget.height ?? 50,
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            focusNode: widget.focusNode,
            onChanged: widget.onChanged,
            obscureText: _obscureText,
            keyboardType: widget.keyboardType,
            validator: widget.validator,
            enabled: widget.enabled,
            readOnly: widget.readOnly,
            textInputAction: widget.textInputAction,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: widget.style ??
                AppStyles.kTextStyle14.copyWith(
                  color: AppColors.color000000,
                  fontWeight: FontWeight.w400,
                ),
            cursorColor: AppColors.blue,
            maxLength: widget.maxLength,
            buildCounter: (
              _, {
              required int currentLength,
              required int? maxLength,
              required bool isFocused,
            }) =>
                null,
            decoration: InputDecoration(
              contentPadding: widget.contentPadding ??
                  const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
              hintText: widget.hintText,
              hintStyle: widget.hintTextStyle ??
                  AppStyles.kTextStyle14.copyWith(
                    color: AppColors.color696969,
                    fontWeight: FontWeight.w400,
                  ),
              fillColor: AppColors.blue,
              prefixIcon: widget.prefixIcon != null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: widget.prefixIcon,
                    )
                  : null,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      highlightColor: Colors.transparent,
                      icon: Icon(
                        _obscureText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : widget.suffixIcon,
              border: widget.hasBorder
                  ? outlineInputBorder(Colors.grey.shade400)
                  : InputBorder.none,
              enabledBorder: widget.hasBorder
                  ? outlineInputBorder(Colors.grey.shade400)
                  : InputBorder.none,
              focusedBorder: widget.hasBorder
                  ? outlineInputBorder(AppColors.blue)
                  : InputBorder.none,
            ),
          ),
        ),
        widget.textError?.isNotEmpty == true
            ? Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Icon(Icons.error, color: AppColors.errorText, size: 16),
                    const SizedBox(width: 2),
                    Expanded(
                      child: Text(
                        widget.textError!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.kTextStyle12.copyWith(
                          color: AppColors.errorText,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }

  _buildLabel() {
    return widget.label != null
        ? Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: widget.isRequired
                ? AppRichText(
                    normalText: widget.label!,
                    textStyle: widget.labelTextStyle ??
                        AppStyles.kTextStyle14Bold
                            .copyWith(color: AppColors.color000000),
                    spanText: '*',
                    spanTextStyle: AppStyles.kTextStyle14Bold.copyWith(
                      color: AppColors.errorText,
                    ),
                  )
                : Text(
                    widget.label!,
                    style: widget.labelTextStyle ??
                        AppStyles.kTextStyle14Bold
                            .copyWith(color: AppColors.color000000),
                  ),
          )
        : const SizedBox.shrink();
  }
}
