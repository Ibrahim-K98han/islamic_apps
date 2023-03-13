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
        title: Text('মসজিদ'),
        backgroundColor: Colors.green,
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
