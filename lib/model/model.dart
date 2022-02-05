class ModeTimes {
  ModeTimes({
    this.timings,
    this.date,
    this.meta,
  });

  Timings? timings;
  Date? date;
  Meta? meta;

  factory ModeTimes.fromJson(Map<String, dynamic> json) => ModeTimes(
        timings: Timings.fromJson(json["timings"]),
        date: Date.fromJson(json["date"]),
        meta: Meta.fromJson(json["meta"]),
      );
}

class Date {
  Date({
    this.readable,
    this.timestamp,
    this.gregorian,
    this.hijri,
  });

  String? readable;
  String? timestamp;
  Gregorian? gregorian;
  Hijri? hijri;

  factory Date.fromJson(Map<String, dynamic> json) => Date(
        readable: json["readable"],
        timestamp: json["timestamp"],
        gregorian: Gregorian.fromJson(json["gregorian"]),
        hijri: Hijri.fromJson(json["hijri"]),
      );
}

class Gregorian {
  Gregorian({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
  });

  String? date;
  String? format;
  String? day;
  GregorianWeekday? weekday;
  GregorianMonth? month;
  String? year;
  Designation? designation;

  factory Gregorian.fromJson(Map<String, dynamic> json) => Gregorian(
        date: json["date"],
        format: json["format"],
        day: json["day"],
        weekday: GregorianWeekday.fromJson(json["weekday"]),
        month: GregorianMonth.fromJson(json["month"]),
        year: json["year"],
        designation: Designation.fromJson(json["designation"]),
      );
}

class Designation {
  Designation({
    this.abbreviated,
    this.expanded,
  });

  String? abbreviated;
  String? expanded;

  factory Designation.fromJson(Map<String, dynamic> json) => Designation(
        abbreviated: json["abbreviated"],
        expanded: json["expanded"],
      );
}

class GregorianMonth {
  GregorianMonth({
    this.number,
    this.en,
  });

  int? number;
  String? en;

  factory GregorianMonth.fromJson(Map<String, dynamic> json) => GregorianMonth(
        number: json["number"],
        en: json["en"],
      );
}

class GregorianWeekday {
  GregorianWeekday({
    this.en,
  });

  String? en;

  factory GregorianWeekday.fromJson(Map<String, dynamic> json) =>
      GregorianWeekday(
        en: json["en"],
      );
}

class Hijri {
  Hijri({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
    this.holidays,
  });

  String? date;
  String? format;
  String? day;
  HijriWeekday? weekday;
  HijriMonth? month;
  String? year;
  Designation? designation;
  List<dynamic>? holidays;

  factory Hijri.fromJson(Map<String, dynamic> json) => Hijri(
        date: json["date"],
        format: json["format"],
        day: json["day"],
        weekday: HijriWeekday.fromJson(json["weekday"]),
        month: HijriMonth.fromJson(json["month"]),
        year: json["year"],
        designation: Designation.fromJson(json["designation"]),
        holidays: List<dynamic>.from(json["holidays"].map((x) => x)),
      );
}

class HijriMonth {
  HijriMonth({
    this.number,
    this.en,
    this.ar,
  });

  int? number;
  String? en;
  String? ar;

  factory HijriMonth.fromJson(Map<String, dynamic> json) => HijriMonth(
        number: json["number"],
        en: json["en"],
        ar: json["ar"],
      );
}

class HijriWeekday {
  HijriWeekday({
    this.en,
    this.ar,
  });

  String? en;
  String? ar;

  factory HijriWeekday.fromJson(Map<String, dynamic> json) => HijriWeekday(
        en: json["en"],
        ar: json["ar"],
      );
}

class Meta {
  Meta({
    this.latitude,
    this.longitude,
    this.timezone,
    this.method,
    this.latitudeAdjustmentMethod,
    this.midnightMode,
    this.school,
    this.offset,
  });

  double? latitude;
  double? longitude;
  String? timezone;
  Method? method;
  String? latitudeAdjustmentMethod;
  String? midnightMode;
  String? school;
  Map<String, int>? offset;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        timezone: json["timezone"],
        method: Method.fromJson(json["method"]),
        latitudeAdjustmentMethod: json["latitudeAdjustmentMethod"],
        midnightMode: json["midnightMode"],
        school: json["school"],
        offset:
            Map.from(json["offset"]).map((k, v) => MapEntry<String, int>(k, v)),
      );
}

class Method {
  Method({
    this.id,
    this.name,
    this.params,
    this.location,
  });

  int? id;
  String? name;
  Params? params;
  Location? location;

  factory Method.fromJson(Map<String, dynamic> json) => Method(
        id: json["id"],
        name: json["name"],
        params: Params.fromJson(json["params"]),
        location: Location.fromJson(json["location"]),
      );
}

class Location {
  Location({
    this.latitude,
    this.longitude,
  });

  double? latitude;
  double? longitude;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
      );
}

class Params {
  Params({
    this.fajr,
    this.isha,
  });

  int? fajr;
  int? isha;

  factory Params.fromJson(Map<String, dynamic> json) => Params(
        fajr: json["Fajr"],
        isha: json["Isha"],
      );
}

class Timings {
  Timings({
    this.fajr,
    this.sunrise,
    this.dhuhr,
    this.asr,
    this.sunset,
    this.maghrib,
    this.isha,
    this.imsak,
    this.midnight,
  });

  String? fajr;
  String? sunrise;
  String? dhuhr;
  String? asr;
  String? sunset;
  String? maghrib;
  String? isha;
  String? imsak;
  String? midnight;

  factory Timings.fromJson(Map<String, dynamic> json) => Timings(
        fajr: json["Fajr"],
        sunrise: json["Sunrise"],
        dhuhr: json["Dhuhr"],
        asr: json["Asr"],
        sunset: json["Sunset"],
        maghrib: json["Maghrib"],
        isha: json["Isha"],
        imsak: json["Imsak"],
        midnight: json["Midnight"],
      );
}
