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
        backgroundColor: Colors.green,
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
