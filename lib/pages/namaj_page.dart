import 'package:flutter/material.dart';

import '../widgets/steps_widgets.dart';

class NamajPage extends StatefulWidget {
  const NamajPage({Key? key}) : super(key: key);

  @override
  State<NamajPage> createState() => _NamajPageState();
}

class _NamajPageState extends State<NamajPage> {
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

