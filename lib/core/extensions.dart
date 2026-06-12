import 'package:flutter/material.dart';

extension BuildExtension on BuildContext {
  Size get size => MediaQuery.sizeOf(this);
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;

  Color get primaryColor => Theme.of(this).primaryColor;
  Color get cyanColor=>const Color.fromRGBO(180, 255, 255, 0.47);

  Color get darkBlueColor=> Color.fromARGB(255, 50, 3, 133);

}
