import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:taqvim/model/model.dart';

class ServiseTime {
  static Box<ModeTimes>? box;
  static List datas = [];

  static Future openBox() async {
    Directory dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    box = await Hive.openBox("time_data");
  }

  static Future putDataToBox(List<ModeTimes> data) async {
    await box!.clear();
    for (ModeTimes item in data) {
      box!.add(item);
    }
  }

  static Future<List<ModeTimes>> getData() async {
    await openBox();
    Response res = await Dio().get(
        'https://api.aladhan.com/v1/calendarByCity?city=Tashkent&country=Uzbekistan&method=13&month=2&year=2022&school=1');
    List<ModeTimes> times =
        (res.data['data'] as List).map((e) => ModeTimes.fromJson(e)).toList();
    await putDataToBox(times);
    return times;
  }

  static registerAdapters() {
    Hive.registerAdapter(ModeTimesAdapter());
    Hive.registerAdapter(DateAdapter());
    Hive.registerAdapter(GregorianAdapter());
    Hive.registerAdapter(DesignationAdapter());
    Hive.registerAdapter(GregorianMonthAdapter());
    Hive.registerAdapter(GregorianWeekdayAdapter());
    Hive.registerAdapter(HijriAdapter());
    Hive.registerAdapter(HijriMonthAdapter());
    Hive.registerAdapter(HijriWeekdayAdapter());
    Hive.registerAdapter(MetaAdapter());
    Hive.registerAdapter(MethodAdapter());
    Hive.registerAdapter(LocationAdapter());
    Hive.registerAdapter(ParamsAdapter());
    Hive.registerAdapter(TimingsAdapter());
  }

  static int day = DateTime.now().day,
      month = DateTime.now().month,
      year = DateTime.now().year;
}
