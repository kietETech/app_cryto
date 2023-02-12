import 'package:flutter/material.dart';

class WaterDropEffect extends StatefulWidget {
  final double sideLength;
  const WaterDropEffect({Key? key, required this.sideLength}) : super(key: key);

  @override
  _WaterDropEffectState createState() => _WaterDropEffectState();
}

class _WaterDropEffectState extends State<WaterDropEffect> {
  double? _sideLength;

  @override
  void initState() {
    super.initState();
    _sideLength = widget.sideLength;
  }

  void _toggleSideLength() {
    setState(() {
      _sideLength = _sideLength == 50 ? 100 : 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: _sideLength,
      width: _sideLength,
      duration: const Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        color: Colors.yellow,
        child: InkWell(
          onTap: _toggleSideLength,
        ),
      ),
    );
  }
}
