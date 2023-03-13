import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/azan_widgets.dart';

class GosolePage extends StatefulWidget {
  const GosolePage({super.key});

  @override
  State<GosolePage> createState() => _GosolePageState();
}

class _GosolePageState extends State<GosolePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('গোসল'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('''ফরজ গোসলের দোয়া, নিয়ত ও নিয়ম''',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        '''প্রয়োজন অপ্রয়োজনে আমরা প্রতিদিন গোসল করি। তবে পবিত্রতা অর্জনের উদ্দেশ্যে গোসলের ক্ষেত্রে কিছু নিয়ম মানতে হয়। তা না হলে পবিত্রতা হওয়া যায় না।চলুন তাহলে গোসলের নিয়ম সম্পর্কে বিস্তারিত জেনে নেই –'''),
                    Text('''গোসলের দোয়া''',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        '''বাংলা উচ্চারণঃ “নাওয়াইতুয়ান গোছলা লিরাফিল জানাবা-তি।'''),
                    Text('''ফরজ গোসলের নিয়ত''',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('''ববাংলা উচ্চারণঃ “নাওয়াইতুল গুছলা লিরাফইল জানাবাতি।
                      অর্থঃ আমি নাপাকি থেকে পাক হওয়ার জন্য গোসল করছি।'''),
                    Text('''ফরজ গোসলের নিয়ম''',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('''নিম্নে ফরজ গোসলের নিয়ম দেওয়া হলো –

গোসলের দোয়া পড়া
তারপর গোসলের নিয়ত করে বিসমিল্লাহ বলে দু হাত কব্জি পর্যন্ত ভালো করে ধৌত করতে হবে।
এরপর শরীরের কোন জায়গায় অপবিত্র বস্তু লেগে থাকলে তা পরিষ্কার করতে হবে।
তারপর অজু করতে হবে। গড়গড়ার সাথে কুলি করতে হবে, রোজাদার হলে গড়গড়া করা যাবে না। তিনবার কুলি করা সুন্নত
তারপর তিনবার নাকে পানি দিয়ে নাক পরিষ্কার করতে হবে
অজুর পর মাথায় এমনভাবে পানি ঢালতে হবে যেন চুলের গোড়া পর্যন্ত পানি পৌঁছে যায়।
এরপর ডান কাঁধে পরে বাম কাঁধে পানি ঢেলে সমস্ত শরীর ধৌত করতে হবে যেন শরীরের কোন অংশ শুকনো না থাকে।
সর্বশেষে পা ধুতে হবে
এরপর সারা শরীর কোন কাপড় বা গামছা দিয়ে মুছে শুকনো কাপড় পড়তে হবে।'''),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
