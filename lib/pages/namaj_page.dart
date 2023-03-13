import 'package:flutter/material.dart';

import '../widgets/namaj_steps_widgets.dart';

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
        title: const Text('নামাজ'),
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
        children:  const[
          Expanded(child: NamajSteps()),
        ],
      ),
    );
  }
}

