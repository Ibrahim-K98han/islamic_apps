import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/azan_widgets.dart';
import '../widgets/masjid_steps_widgets.dart';

class MosjidPage extends StatefulWidget {
  const MosjidPage({super.key});

  @override
  State<MosjidPage> createState() => _MosjidPageState();
}

class _MosjidPageState extends State<MosjidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('মসজিদ'),
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
            child: MasjidSteps()
            ),
        ],
      ),
     );
  }
}
