import 'package:flutter/material.dart';
import 'package:namaj_apps/pages/azan_page.dart';

import 'oju_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> girdList = [
    'নামাজ',
    'রমজানের ক্যালেন্ডার',
    'রমজানের ক্যালেন্ডার',
    'রমজানের ক্যালেন্ডার',
    'রমজানের ক্যালেন্ডার',
    'রমজানের ক্যালেন্ডার',
  ];
  final List<String> list = [
    'images/praying.png',
    'images/praying.png',
    'images/praying.png',
    'images/praying.png',
    'images/praying.png',
    'images/praying.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('মেইন পেজ'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AzanPage()),
                        );
                      },
                      child: Expanded(
                        child: Container(
                          height: (MediaQuery.of(context).size.height / 6.5),
                          width: (MediaQuery.of(context).size.width / 3.5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 16, 150, 74),
                                    Color.fromARGB(255, 159, 197, 159),
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'আজান',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                'images/praying.png',
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OjuPage()),
                        );
                      },
                      child: Expanded(
                        child: Container(
                          height: (MediaQuery.of(context).size.height / 6.5),
                          width: (MediaQuery.of(context).size.width / 3.5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 16, 150, 74),
                                    Color.fromARGB(255, 159, 197, 159),
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'ওজু',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                'images/praying.png',
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Expanded(
                        child: Container(
                          height: (MediaQuery.of(context).size.height / 6.5),
                          width: (MediaQuery.of(context).size.width / 3.5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 16, 150, 74),
                                    Color.fromARGB(255, 159, 197, 159),
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'মসজিদ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                'images/praying.png',
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
             
            ],
          ),
        ],
      ),
    );
  }
}
