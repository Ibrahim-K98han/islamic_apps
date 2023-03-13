import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/azan_widgets.dart';
import '../widgets/tayamum_steps_widgets.dart';

class TayamumPage extends StatefulWidget {
  const TayamumPage({super.key});

  @override
  State<TayamumPage> createState() => _TayamumPageState();
}

class _TayamumPageState extends State<TayamumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('তায়াম্মুম'),
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
        children:  const [
          Expanded(child: TayamumSteps()),
        ],
      ),
      );
  }
}
