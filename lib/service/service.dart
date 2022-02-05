import 'package:dio/dio.dart';
import 'package:taqvim/model/model.dart';

class ServiseTime {
  static int day = DateTime.now().day, month = DateTime.now().month, year = DateTime.now().year;
  static Future<List<ModeTimes>> getData() async {
    Response res = await Dio().get(
        'https://api.aladhan.com/v1/calendarByCity?city=Tashkent&country=Uzbekistan&method=13&month=$month&year=$year&school=1');

    return (res.data['data'] as List)
        .map((e) => ModeTimes.fromJson(e))
        .toList();
  }
}
