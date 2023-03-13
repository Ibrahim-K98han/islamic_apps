import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/azan_widgets.dart';
import '../widgets/gosole_steps_widgets.dart';

class GosolePage extends StatefulWidget {
  const GosolePage({super.key});

  @override
  State<GosolePage> createState() => _GosolePageState();
}

class _GosolePageState extends State<GosolePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('গোসল'),
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
      body: Column(
        children: const [
          Expanded(
            child: GosoleSteps()
            ),
        ],
      ),
      );
  }
}
