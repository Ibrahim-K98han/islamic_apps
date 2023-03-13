import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:namaj_apps/widgets/oju_steps_widgets.dart';

import '../widgets/azan_widgets.dart';

class OjuPage extends StatefulWidget {
  const OjuPage({super.key});

  @override
  State<OjuPage> createState() => _OjuPageState();
}

class _OjuPageState extends State<OjuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ওজু'),
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
          Expanded(
            child: OjuSteps()
            ),
        ],
      ),
     );
  }
}
