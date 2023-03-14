import 'package:flutter/material.dart';

class TajbhiaPage extends StatefulWidget {
  const TajbhiaPage({Key? key}) : super(key: key);

  @override
  State<TajbhiaPage> createState() => _TajbhiaPageState();
}

class _TajbhiaPageState extends State<TajbhiaPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _clear() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('তাসবিহ'),
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.height / 4,
                //color: Colors.grey.shade300,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.green),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'আপনি',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '$_counter',
                      style: TextStyle(fontSize: 80),
                    ),
                    Text(
                      'বার পাঠ করেছেন',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 60),
                    backgroundColor: Colors.green,
                  ),
                    onPressed: _incrementCounter, child: const Text('পড়ুন',style: TextStyle(fontSize: 20),)),
                const SizedBox(width: 20,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 60),
                      backgroundColor: Colors.green,
                    ),
                    onPressed: _clear, child: const Text('আবার শুরু করুন',style: TextStyle(fontSize: 15),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
