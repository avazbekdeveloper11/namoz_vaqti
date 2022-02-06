import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taqvim/router/router.dart';
import 'package:taqvim/service/service.dart';

void main() async {
  ServiseTime.registerAdapters();
  await Hive.initFlutter();
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
