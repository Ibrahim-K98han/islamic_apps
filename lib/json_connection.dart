import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';

import 'model/data.dart';

class JsonConnection {

  static double pLat = 0;
  static double pLong = 0;

  late Data list;

  Future getPTLocation() async {

    final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.medium);

    pLat = position.latitude;
    pLong = position.longitude;

    String date = DateTime.now().toIso8601String();
    int method = 4;

    final url = "http://api.aladhan.com/v1/calendar/2023/4?latitude=23.810331&longitude=90.412521&method=$method";

    http.Response res = await http.get(Uri.parse(url), headers: {
      "Accept":
      "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"
    });

    final data = json.decode(res.body);

    list =  Data.fromJson(data);

    return list;
  }
}