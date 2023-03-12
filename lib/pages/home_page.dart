import 'package:flutter/material.dart';
import 'package:namaj_apps/pages/azan_page.dart';
import 'package:namaj_apps/pages/masjid_page.dart';
import 'package:namaj_apps/pages/namaj_page.dart';
import 'package:namaj_apps/pages/romjan_calender_page.dart';
import 'package:namaj_apps/pages/sura_page.dart';

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
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: Text("আজান"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("ওজু"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("মসজিদ"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RomjanCalender()),
              );
            },
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
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
                    children: const [
                      Text(
                        'রমজানের ক্যালেন্ডার',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AzanPage()),
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
                      MaterialPageRoute(builder: (context) => const OjuPage()),
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MosjidPage()));
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
         const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NamajPage()),
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
                            'নামাজ',
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
                      MaterialPageRoute(builder: (context) => const SuraPage()),
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
                            'সূরা',
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => MosjidPage()));
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
                            'গোসল',
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
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => AzanPage()),
                    // );
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
                          FittedBox(
                            child: const Text(
                              'তায়াম্মুম',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => OjuPage()),
                    // );
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
                          const FittedBox(
                            child:  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'পুরুষের নামাজ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => MosjidPage()));
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
                          const FittedBox(
                            child:  Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text(
                                'মহিলাদের নামাজ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
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
        ],
      ),
    );
  }
}
