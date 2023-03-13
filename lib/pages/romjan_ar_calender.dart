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
      appBar: AppBar(
        title: const Text('Romjan ar Calender'),
         flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromARGB(255, 16, 150, 74),
                  Color.fromARGB(255, 159, 197, 159),
                ]),
          ),
        ),
        ),
    );
  }
}
