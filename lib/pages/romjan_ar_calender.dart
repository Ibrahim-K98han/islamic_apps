import 'package:flutter/material.dart';

class RomjanrCalender extends StatefulWidget {
  const RomjanrCalender({Key? key}) : super(key: key);

  @override
  State<RomjanrCalender> createState() => _RomjanrCalenderState();
}

class _RomjanrCalenderState extends State<RomjanrCalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Romjan ar Calender'),),
    );
  }
}
