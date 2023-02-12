import 'package:flutter/material.dart';

Color color1 = Colors.red;
Color color2 = Colors.blue;
double t = 0.5;

Color? mixedColor = Color.lerp(color1, color2, t);
