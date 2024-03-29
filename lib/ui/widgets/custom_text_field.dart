import 'package:craft/utils/material-theme/color_schemes.g.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
   const CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.height,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.prefixConstraints,
    this.suffixIcon,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(
    key: key,
  );

  final Alignment? alignment;

  final double? width;
  final double? height;

  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefixIcon;

  final BoxConstraints? prefixConstraints;

  final Widget? suffixIcon;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: textFormFieldWidget(context),
    )
        : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) => SizedBox(
    width: width ?? 327,
    height: 56,
    child: TextFormField(
      scrollPadding:
      EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      controller: controller,
      focusNode: focusNode ?? FocusNode(),
      autofocus: autofocus!,
      obscureText: obscureText!,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      maxLines: maxLines ?? 1,
      decoration: decoration,
      validator: validator,

    ),
  );
  InputDecoration get decoration => InputDecoration(
    hintText: hintText ?? "",
    hintStyle: hintStyle?? const TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color: Color(0xff101623)) ,
    prefixIcon: prefixIcon,
    prefixIconConstraints: prefixConstraints,
    suffixIcon: suffixIcon,
    suffixIconConstraints: suffixConstraints,
    isDense: true,
    contentPadding: contentPadding ??
        const EdgeInsets.only(
          top: 16,
          right: 16,
          bottom: 16,
        ),
    fillColor: fillColor ?? const Color(0xffE5E7EB),
    filled: filled,
    border: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: Color(0xffE5E7EB),
            width: 1,
          ),
        ),
    enabledBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            color: Color(0xffE5E7EB),
            width: 1,
          ),
        ),
    focusedBorder: borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: Color(0xffE5E7EB),
            width: 1,
          ),
        ),
  );
}