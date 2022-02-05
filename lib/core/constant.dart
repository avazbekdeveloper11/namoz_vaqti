import 'package:flutter/material.dart';

class Constant {
  static List size(BuildContext context) {
    return [
      MediaQuery.of(context).size.height,
      MediaQuery.of(context).size.width
    ];
  }

  static bool mode = true;

static double index = 0;
static int count = 0;
  static Color containerColor = Colors.white.withOpacity(0.8);
  static Color black = Colors.black;

  static int sanpLength = 0;
  static List pageForIcon = [
    'assets/images/times.jpg',
    'assets/images/tasbeh.png',
    "assets/images/tasbeh.png",
    "assets/images/tasbeh.png",
  ];
  static List months = [
    "Yanvar",
    "Fevral",
    "Mart",
    "Aprel",
    "May",
    "Iyun",
    "Iyul",
    "Avgust",
    "Oktyabr",
    "Sentyabr",
    "Noyabr",
    "Dekabr"
  ];

  static List names = [
    "Bomdod",
    "Quyosh Chiqishi",
    "Peshin",
    "Asr",
    "Shom",
    "Xufton"
  ];
  static List images = [
    Image.asset('assets/images/bomdod.png', fit: BoxFit.cover),
    Image.asset('assets/images/peshin.png', fit: BoxFit.cover),
    Image.asset('assets/images/asr.png', fit: BoxFit.cover),
    Image.asset('assets/images/shom.png', fit: BoxFit.cover),
    Image.asset('assets/images/xufton.png', fit: BoxFit.cover)
  ];
  static List imagesW = [
    Image.asset('assets/images/bomdodW.png', fit: BoxFit.cover),
    Image.asset('assets/images/peshinW.png', fit: BoxFit.cover),
    Image.asset('assets/images/asrW.png', fit: BoxFit.cover),
    Image.asset('assets/images/shomW.png', fit: BoxFit.cover),
    Image.asset('assets/images/xuftonW.png', fit: BoxFit.cover)
  ];
  static String backgroundImage = 'assets/images/background.jpg';

  static AppBar appBar(context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        "Tavqim",
        style: TextStyle(
            color: Colors.black,
            fontFamily: "tavqimUchun",
            fontSize: Constant.size(context)[1] * 0.08),
      ),
    );
  }
}
