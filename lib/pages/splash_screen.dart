import 'dart:async';

import 'package:flutter/material.dart';
import 'package:namaj_apps/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _visible = false;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _visible = !_visible;
      });
    });

    super.initState();
    _route();
  }

  _route() {
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 176, 218, 129),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'images/praying.png',
              height: 200,
              width: 200
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'ইসলাম',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}