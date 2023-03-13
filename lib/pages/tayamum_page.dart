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
        backgroundColor: Colors.green,
      ),
      body: Column(
        children:  const [
          Expanded(child: TayamumSteps()),
        ],
      ),
      );
  }
}
