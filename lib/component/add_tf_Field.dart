import 'package:flutter/material.dart';

class add_tf_TextFiled extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool hide;
  final double sizeText;
  final TextStyle? colorText;
  final Color? colorPrefixIcon;
  final IconData? prefixIcon;
  final Widget? sufixIcon;
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final Color colorBorder;
  final double addBorderRadius;
  final Color colorTextEnter;

  const add_tf_TextFiled(
      {super.key,
      required this.controller,
      required this.keyboardType,
      required this.hide,
      required this.sizeText,
      required this.colorText,
      required this.prefixIcon,
      required this.sufixIcon,
      required this.padding,
      required this.hintText,
      required this.colorBorder,
      required this.addBorderRadius,
      required this.colorPrefixIcon,
      required this.colorTextEnter});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: colorBorder),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextFormField(
        style: TextStyle(color: colorTextEnter),
        cursorColor: const Color.fromARGB(255, 76, 168, 175),
        controller: controller,
        keyboardType: keyboardType,
        obscureText: hide,
        onSaved: (newValue) {},
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              prefixIcon,
              color: colorPrefixIcon,
            ),
            suffixIcon: sufixIcon,
            contentPadding: padding,
            hintText: hintText,
            hintStyle: colorText),
      ),
    );
  }
}
