import 'package:flutter/material.dart';
import 'package:taqvim/core/constant.dart';

class Buttons {
  static IconButton iconButton(IconData icon, onPress) {
    return IconButton(
        icon: Icon(icon, color: Constant.black), onPressed: onPress);
  }
}
