import 'package:flutter/material.dart';
import 'package:taqvim/core/constant.dart';
import 'package:taqvim/core/functions.dart';
import 'package:taqvim/service/service.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:taqvim/model/notification.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AndroidInitializationSettings? initializationSettingsAndroid;
  IOSInitializationSettings? initializationSettingsIOS;
  InitializationSettings? initializationSettings;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  int? day = DateTime.now().day, hour, minute;

  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
    initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    initializationSettingsIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: (id, title, subtitle, content) {});
    initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings!,
      onSelectNotification: (v) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (c) => const HomePage(),
          ),
        );
      },
    );
    natif();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: Constant.appBar(context),
      body: Center(
        child: SizedBox(
          height: Constant.size(context)[0] * 0.5,
          width: Constant.size(context)[1] * 0.9,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: Constant.size(context)[0] * 0.23,
                mainAxisSpacing: Constant.size(context)[0] * 0.01,
                crossAxisSpacing: Constant.size(context)[0] * 0.01,
                crossAxisCount: 2),
            physics: const ScrollPhysics(),
            itemBuilder: (_, __) {
              return InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: Functions.docorationRadiusAll(8.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          width: Constant.size(context)[0] * 0.18,
                          height: Constant.size(context)[0] * 0.18,
                          child: Image.asset(Constant.pageForIcon[__])),
                      Text(
                        Constant.namess[__],
                        style: TextStyle(
                          fontSize: Constant.size(context)[1] * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  if (__ == 0) {
                    Navigator.pushNamed(context, '/time');
                  } else if (__ == 1) {
                    Navigator.pushNamed(context, '/tasbih');
                  } else if (__ == 2) {
                    Navigator.pushNamed(context, '/compas');
                  } else {
                    Navigator.pushNamed(context, '/ismlar');
                  }
                },
              );
            },
            itemCount: 4,
          ),
        ),
      ),
    );
  }

  natif() {
    // //!bomdod
    int bomdodhour = int.parse(ServiseTime.box!
        .get(DateTime.now().day)!
        .timings!
        .fajr!
        .split(":")[0]
        .toString());
    int bomdodmin = int.parse(ServiseTime.box!
        .get(DateTime.now().day)!
        .timings!
        .fajr!
        .split("(")[0]
        .toString()
        .split(":")[1]
        .toString());
    NatificationClass.tNatification(flutterLocalNotificationsPlugin, bomdodhour,
        bomdodmin, ['Bomdod Vaqti', "Hayrli kun", "Tavqim"]); // //!bomdod
    int peshinH = int.parse(ServiseTime.box!
        .get(DateTime.now().day)!
        .timings!
        .fajr!
        .split(":")[0]
        .toString());
    int peshinM = int.parse(ServiseTime.box!
        .get(DateTime.now().day)!
        .timings!
        .fajr!
        .split("(")[0]
        .toString()
        .split(":")[1]
        .toString());
    NatificationClass.tNatification(flutterLocalNotificationsPlugin, peshinH,
        peshinM, ['Bomdod Vaqti', "Hayrli kun", "Tavqim"]);
    // //!bomdod
    int asrH = int.parse(ServiseTime.box!
        .get(DateTime.now().day)!
        .timings!
        .fajr!
        .split(":")[0]
        .toString());
    int asrM = int.parse(ServiseTime.box!
        .get(DateTime.now().day)!
        .timings!
        .fajr!
        .split("(")[0]
        .toString()
        .split(":")[1]
        .toString());
    NatificationClass.tNatification(flutterLocalNotificationsPlugin, asrH, asrM,
        ['Bomdod Vaqti', "Hayrli kun", "Tavqim"]);
    // //!bomdod
    int shomH = int.parse(ServiseTime.box!
        .get(DateTime.now().day)!
        .timings!
        .fajr!
        .split(":")[0]
        .toString());
    int shomM = int.parse(ServiseTime.box!
        .get(DateTime.now().day)!
        .timings!
        .fajr!
        .split("(")[0]
        .toString()
        .split(":")[1]
        .toString());
    NatificationClass.tNatification(flutterLocalNotificationsPlugin, shomH,
        shomM, ['Bomdod Vaqti', "Hayrli kun", "Tavqim"]);
    // //!bomdod
    int huftonH = int.parse(ServiseTime.box!
        .get(DateTime.now().day)!
        .timings!
        .fajr!
        .split(":")[0]
        .toString());
    int huftonM = int.parse(ServiseTime.box!
        .get(DateTime.now().day)!
        .timings!
        .fajr!
        .split("(")[0]
        .toString()
        .split(":")[1]
        .toString());
    NatificationClass.tNatification(flutterLocalNotificationsPlugin, huftonH,
        huftonM, ['Bomdod Vaqti', "Hayrli kun", "Tavqim"]);
  }
}
