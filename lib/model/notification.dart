import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:timezone/timezone.dart' as tz;

class NatificationClass {
  static tNatification(
      flutterLocalNotificationsPlugin, int hour, int min, List message) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails("channelId", "channelName",
            channelDescription: "your channel description",
            importance: Importance.max,
            priority: Priority.high,
            ticker: 'ticker');
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.zonedSchedule(
      1,
      message[0],
      message[1],
      tz.TZDateTime.from(
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day,
            hour, min),
        tz.getLocation('America/Detroit'),
      ),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          "channelId",
          "channelName",
          // channelDescription: "channel description",
          importance: Importance.max,
        ),
        iOS: IOSNotificationDetails(),
      ),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
      payload: "",
    );
  }
}
