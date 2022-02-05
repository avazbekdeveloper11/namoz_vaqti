import 'package:flutter/material.dart';
import 'package:taqvim/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Taqvim",
      initialRoute: "/",
      onGenerateRoute: (settings) => RouterGenerator.generateRouter(settings),
    );
  }
}
