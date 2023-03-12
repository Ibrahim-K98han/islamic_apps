import 'package:flutter/material.dart';

import '../widgets/steps_widgets.dart';

class SuraPage extends StatefulWidget {
  const SuraPage({Key? key}) : super(key: key);

  @override
  State<SuraPage> createState() => _SuraPageState();
}

class _SuraPageState extends State<SuraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('নামাজ'),),
      body: Column(
        children: [
          Expanded(child: Steps()),
        ],
      ),
    );
  }
}

