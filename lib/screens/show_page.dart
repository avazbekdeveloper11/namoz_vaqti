import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:taqvim/service/service.dart';

import 'home_page.dart';

class ShowPage extends StatefulWidget {
  const ShowPage({Key? key}) : super(key: key);

  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  @override
  void initState() {
    super.initState();
    ServiseTime.getData();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: HomePage(),
      duration: 5000,
      imageSize: 250,
      imageSrc: "assets/images/show.png",
      text: "Namoz Vaqti",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontSize: 40.0,
      ),
      colors: const [
        Colors.black,
        Colors.grey,
        Colors.white,
      ],
      backgroundColor: Colors.white,
    );
  }
}
