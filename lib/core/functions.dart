import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:taqvim/core/constant.dart';

class Functions {
  static back(context) {
    return Navigator.pop(context);
  }

  static SizedBox line(double sizeW) {
    return SizedBox(
        width: sizeW * 0.75,
        child: const Divider(color: Colors.black, thickness: 1));
  }

  static AutoSizeText autoSize(String text) {
    return AutoSizeText(
      text,
      minFontSize: 18,
      style: TextStyle(color: Constant.black),
    );
  }

  static BorderRadius docorationRadiusAll(radius) {
    return BorderRadius.all(Radius.circular(radius));
  }

  static DecorationImage decorationImage(image) {
    return DecorationImage(image: AssetImage(image), fit: BoxFit.cover);
  }
}
