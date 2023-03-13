import 'package:flutter/material.dart';

class RomjanCalender extends StatefulWidget {
  const RomjanCalender({Key? key}) : super(key: key);

  @override
  State<RomjanCalender> createState() => _RomjanCalenderState();
}

class _RomjanCalenderState extends State<RomjanCalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('রমজানের ক্যালেন্ডার'),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/romjan_calender.jpg',),
            ))
          ],
        ),
      ),
    );
  }
}
