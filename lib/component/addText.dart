import 'package:flutter/cupertino.dart';

class addText extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final String text;
  final MainAxisSize mainAxisSize;
  final double size;
  final FontWeight? fontWeight;
  final double sizeHeight;
  final Color? cretaColor;

  const addText(
      {super.key,
      required this.mainAxisAlignment,
      required this.text,
      required this.mainAxisSize,
      required this.size,
      this.fontWeight,
      required this.sizeHeight,
      required this.cretaColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: [
        SizedBox(
          height: sizeHeight,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: size,
              fontWeight: fontWeight,
              color: cretaColor,
              fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: sizeHeight,
        )
      ],
    );
  }
}
