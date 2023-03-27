import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../prayer_time_model.dart';

class PrayTimes extends StatefulWidget {
  PrayTimes({super.key});

  @override
  _PrayTimesState createState() => _PrayTimesState();
}

class _PrayTimesState extends State<PrayTimes> {
  // JsonConnection jsonConnection = new JsonConnection();
  // late Data list;
  Timings? timings;

  static String city = 'Dhaka';
  static String country = 'Bangladesh';
  static int method = 8;
  var data;

  final String url =
      'http://api.aladhan.com/v1/timingsByCity?city=$city&country=$country&method=$method';
  Future getData() async {
    var response = await http.get(Uri.parse(url));
    //print('..................$response');
    setState(() {
      var decode = json.decode(response.body);

      timings = Timings.fromJson(decode["data"]["timings"]);

      // data = decode["data"];
      //print('..................$timings');
    });
  }

  @override
  void initState() {
    super.initState();
    // getData();
  }

  // Future getPTData() async {
  //   http.Response res = await http.get(Uri.parse(url), headers: {
  //     "Accept":
  //     "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"
  //   });
  //   final data = jsonDecode(res.body);
  //
  //   list = Data.fromJson(data);
  //
  //   return list;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pray Times'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    getData();
                  },
                  child: Text('Clicke')),
              timings != null
                  ? Column(
                      children: [
                        Container(
                            width: double.infinity,
                            height: 50,
                            color: Colors.red,
                            child: Text(
                                '${DateFormat("h:mm a").format(DateFormat("hh:mm").parse(timings!.fajr!))}')),
                        Container(
                            width: double.infinity,
                            height: 50,
                            color: Colors.red,
                            child: Text(
                                '${DateFormat("h:mm a").format(DateFormat("hh:mm").parse(timings!.dhuhr!))}')),
                        Container(
                            width: double.infinity,
                            height: 50,
                            color: Colors.red,
                            child: Text(
                                '${DateFormat("h:mm a").format(DateFormat("hh:mm").parse(timings!.asr!))}')),
                        Container(
                            width: double.infinity,
                            height: 50,
                            color: Colors.red,
                            child: Text(
                                '${DateFormat("h:mm a").format(DateFormat("hh:mm").parse(timings!.maghrib!))}')),
                        Container(
                            width: double.infinity,
                            height: 50,
                            color: Colors.red,
                            //DateFormat.j().format(DateTime.now()),
                            // timings.isha
                            child: Text(
                                '${DateFormat("h:mm a").format(DateFormat("hh:mm").parse(timings!.isha!))}'))
                      ],
                    )
                  : SizedBox.shrink(),
              // Text("যোহর : ${data["timings"]["Dhuhr"]}"),
              // Text("আছর : ${data["timings"]["Asr"]}"),
              // Text("মাগরীব : ${data["timings"]["Maghrib"]}"),
              // Text("এশা : ${data["timings"]["Isha"]}"),
            ],
          ),
        ));
  }
}
