import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final double size;
  final Color colorText;
  final FontWeight fontWeight;
  final void Function() onPressed;
  final Color focusColor;
  final Color highlightColor;
  final AlignmentGeometry alignment;
  final Color colorDecoration;
  final double opacity;
  final double spreadRadius;
  final Offset offset;

  const CustomButton({
    Key? key,
    required this.text,
    required this.size,
    required this.colorText,
    required this.fontWeight,
    required this.onPressed,
    required this.focusColor,
    required this.highlightColor,
    required this.alignment,
    required this.colorDecoration,
    required this.opacity,
    required this.spreadRadius,
    required this.offset,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      onHover: (value) {
        setState(() {
          _isHovering = value;
        });
      },
      child: AnimatedContainer(
        height: 50,
        width: double.infinity,
        alignment: widget.alignment,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: _isHovering ? widget.focusColor : widget.colorDecoration,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
                blurRadius: widget.opacity,
                spreadRadius: widget.spreadRadius,
                offset: widget.offset)
          ],
        ),
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: widget.size,
              fontWeight: widget.fontWeight,
              color: widget.colorText),
        ),
      ),
    );
  }
}
