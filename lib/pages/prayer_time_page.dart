import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PrayTimes extends StatefulWidget {
  PrayTimes({super.key});

  @override
  _PrayTimesState createState() => _PrayTimesState();
}

class _PrayTimesState extends State<PrayTimes> {

  // JsonConnection jsonConnection = new JsonConnection();
  // late Data list;

  static String city = 'Dhaka';
  static String country = 'Bangladesh';
  static int method = 8;
  var data;

  final String url =
      'http://api.aladhan.com/v1/timingsByCity?city=$city&country=$country&method=$method';
  Future getData()async{
    var response = await http.get(Uri.parse(url));
    setState(() {
      var decode = json.decode(response.body);
      data = decode["data"];
      print(data);
    });
  }

  @override
  void initState() {
    super.initState();
    this.getData();
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
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(),
          );
        },
      )
    );
  }
}