import 'package:flutter/material.dart';
import '../widgets/sura_steps_widgets.dart';

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
        title: const Text('সূরা'),),
      body: Column(
        children: const [
          Expanded(child: SuraSteps()),
        ],
      ),
    );
  }
}

