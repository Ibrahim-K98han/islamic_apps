import 'package:flutter/material.dart';
import 'package:namaj_apps/pages/azan_page.dart';
import 'package:namaj_apps/pages/gosole_page.dart';
import 'package:namaj_apps/pages/masjid_page.dart';
import 'package:namaj_apps/pages/namaj_page.dart';
import 'package:namaj_apps/pages/romjan_calender_page.dart';
import 'package:namaj_apps/pages/sura_page.dart';
import 'package:namaj_apps/pages/tayamum_page.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('মেইন পেজ'),
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
      drawer: Drawer(
        backgroundColor: Colors.green.shade300,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: SafeArea(
          child: ListView(
           padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: Colors.green,
                child: DrawerHeader(
                  child: Column(
                    children: const[
                    Text('Welcome to Namaj App',style: TextStyle(color: Colors.white,fontSize: 20),)
                    ],
                  )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white54,
                  trailing: const Icon(Icons.arrow_right),
                  title: const Text(
                    "আজান",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const AzanPage()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white54,
                  trailing: const Icon(Icons.arrow_right),
                  title: const Text(
                    "ওজু",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const OjuPage()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white54,
                  trailing: const Icon(Icons.arrow_right),
                  title: const Text(
                    "মসজিদ",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MosjidPage()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white54,
                  trailing: const Icon(Icons.arrow_right),
                  title: const Text(
                    "নামাজ",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const NamajPage()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white54,
                  trailing: const Icon(Icons.arrow_right),
                  title: const Text(
                    "সূরা",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SuraPage()));
                  },
                ),
              ),
              Padding(
               padding: const EdgeInsets.all(5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white54,
                  trailing: const Icon(Icons.arrow_right),
                  title: const Text(
                    "গোসল",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const GosolePage()));
                  },
                ),
              ),
              Padding(
               padding: const EdgeInsets.all(5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.white54,
                  trailing: const Icon(Icons.arrow_right),
                  title: const Text(
                    "তায়াম্মুম",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TayamumPage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RomjanCalender()),
                );
              },
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
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AzanPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                style: TextStyle(color: Colors.white, fontSize: 18),
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
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const OjuPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                style: TextStyle(color: Colors.white, fontSize: 18),
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
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MosjidPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                style: TextStyle(color: Colors.white, fontSize: 18),
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
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NamajPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                style: TextStyle(color: Colors.white, fontSize: 18),
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
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SuraPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                style: TextStyle(color: Colors.white, fontSize: 18),
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
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GosolePage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                style: TextStyle(color: Colors.white, fontSize: 18),
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
                        MaterialPageRoute(
                            builder: (context) => const TayamumPage()),
                      );
                    },
                    child: Container(
                      height: (MediaQuery.of(context).size.height / 7),
                      width:(MediaQuery.of(context).size.height / 7),
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
                            child: Text(
                              'তায়াম্মুম',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
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
                  // InkWell(
                  //   onTap: () {
                  //     // Navigator.push(
                  //     //   context,
                  //     //   MaterialPageRoute(builder: (context) => OjuPage()),
                  //     // );
                  //   },
                  //   child: Expanded(
                  //     child: Container(
                  //       height: (MediaQuery.of(context).size.height / 6.5),
                  //       width: (MediaQuery.of(context).size.width / 3.5),
                  //       alignment: Alignment.center,
                  //       decoration: BoxDecoration(
                  //           gradient: const LinearGradient(
                  //               colors: [
                  //                 Color.fromARGB(255, 16, 150, 74),
                  //                 Color.fromARGB(255, 159, 197, 159),
                  //               ],
                  //               begin: Alignment.bottomCenter,
                  //               end: Alignment.topCenter),
                  //           borderRadius: BorderRadius.circular(15)),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           const FittedBox(
                  //             child:  Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: Text(
                  //                 'পুরুষের নামাজ',
                  //                 style: TextStyle(
                  //                     color: Colors.white, fontSize: 18),
                  //               ),
                  //             ),
                  //           ),
                  //           const SizedBox(
                  //             height: 20,
                  //           ),
                  //           Image.asset(
                  //             'images/praying.png',
                  //             width: 40,
                  //             height: 40,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // InkWell(
                  //   onTap: () {
                  //     // Navigator.push(
                  //     //     context,
                  //     //     MaterialPageRoute(
                  //     //         builder: (context) => MosjidPage()));
                  //   },
                  //   child: Expanded(
                  //     child: Container(
                  //       height: (MediaQuery.of(context).size.height / 6.5),
                  //       width: (MediaQuery.of(context).size.width / 3.5),
                  //       alignment: Alignment.center,
                  //       decoration: BoxDecoration(
                  //           gradient: const LinearGradient(
                  //               colors: [
                  //                 Color.fromARGB(255, 16, 150, 74),
                  //                 Color.fromARGB(255, 159, 197, 159),
                  //               ],
                  //               begin: Alignment.bottomCenter,
                  //               end: Alignment.topCenter),
                  //           borderRadius: BorderRadius.circular(15)),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           const FittedBox(
                  //             child:  Padding(
                  //               padding:  EdgeInsets.all(8.0),
                  //               child: Text(
                  //                 'মহিলাদের নামাজ',
                  //                 style: TextStyle(
                  //                     color: Colors.white, fontSize: 18),
                  //               ),
                  //             ),
                  //           ),
                  //           const SizedBox(
                  //             height: 20,
                  //           ),
                  //           Image.asset(
                  //             'images/praying.png',
                  //             width: 40,
                  //             height: 40,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
