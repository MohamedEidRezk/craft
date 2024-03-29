import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    required this.onPressed,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String text;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Function() onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(border: Border.all(color: borderColor ?? Colors.transparent),
          color: backgroundColor ?? const Color(0xFF7FB04F),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 0.5,
              spreadRadius: 0.5,
              offset: Offset.fromDirection(90),
            )
          ],
        ),
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontSize: 16,
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
