import 'package:flutter/material.dart';

class OtherVerify extends StatelessWidget {
  final String pathImage;
  final double scale;
  final double heightContainer;
  final double withContainer;
  final Color colorBorder;
  final double withBorder;
  final BorderRadiusGeometry? borderRadius;
  const OtherVerify(
      {super.key,
      required this.pathImage,
      required this.scale,
      required this.heightContainer,
      required this.withContainer,
      required this.withBorder,
      required this.colorBorder,
      required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: heightContainer,
      // width: withContainer,
      decoration: BoxDecoration(
          border: Border.all(color: colorBorder, width: withContainer),
          borderRadius: borderRadius),
      child: Image.asset(
        pathImage,
        scale: scale,
      ),
    );
  }
}
