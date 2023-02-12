import 'package:flutter/material.dart';
import '../registration_page.dart';

class toSignup extends StatelessWidget {
  final double heght;
  final Color colorText;
  final AlignmentGeometry alignment;
  final String text;
  final double sizeText;
  final Color? colorBorder;
  final FontWeight fontWeight;

  const toSignup(
      {super.key,
      required this.heght,
      required this.colorText,
      required this.alignment,
      required this.text,
      required this.sizeText,
      this.colorBorder,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Registration_Page()));
      },
      child: Container(
        height: heght,
        width: double.infinity,
        color: colorBorder,
        alignment: alignment,
        child: Text(
          text,
          style: TextStyle(
              fontSize: sizeText, color: colorText, fontWeight: fontWeight),
        ),
      ),
    );
  }
}
