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
        title: const Text('সূরা'),
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
          Expanded(child: SuraSteps()),
        ],
      ),
    );
  }
}

