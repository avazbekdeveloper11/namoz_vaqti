import 'package:flutter/material.dart';
import 'package:taqvim/screens/Allohning_ismlari.dart';
import 'package:taqvim/screens/compas/main.dart';
import 'package:taqvim/screens/data_time.dart';
import 'package:taqvim/screens/home_page.dart';
import 'package:taqvim/screens/show_page.dart';
import 'package:taqvim/screens/tasbih.dart';

class RouterGenerator {
  static generateRouter(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const ShowPage());
      case "/show":
        return MaterialPageRoute(builder: (_) => const HomePage());
      case "/time":
        return MaterialPageRoute(builder: (_) => const DataTimeTaqvim());
      case "/tasbih":
        return MaterialPageRoute(builder: (_) => const TasbehPage());
      case "/compas":
        return MaterialPageRoute(builder: (_) => CompasPage());
      case "/ismlar":
        return MaterialPageRoute(builder: (_) => const AllohningIsmlari());
    }
  }
}
