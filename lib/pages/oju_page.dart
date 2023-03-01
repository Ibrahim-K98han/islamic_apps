import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/azan_widgets.dart';

class OjuPage extends StatefulWidget {
  const OjuPage({super.key});

  @override
  State<OjuPage> createState() => _OjuPageState();
}

class _OjuPageState extends State<OjuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ওজু'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('''অযুর দোয়া ও নিয়ত এবং অযুর করার নিয়ম''',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                SizedBox(height: 10,),
                AzanWidgets(
                    azanArabic: '''بسم الله العلي العظيم والحمد لله علي دين الاسلام الاسلام حق والكفر باطل الاسلام نور والكفر ظلمةُ''',
                    azanBangla: '''বাংলা উচ্চারণঃ বিসমিল্লাহিল আলিয়্যিল আজিম। ওয়াল হামদুলিল্লাহি আলা দ্বীনিল ইসলাম। আল ইসলামু হাক্কুন। ওয়াল কুফরু বাতিলুন। ওয়াল ইসলামু নুরুন। ওয়াল কুফরু জুলমাত।''',
                    azanUccharon: '''অর্থঃ মহান ও পরাক্রান্ত আল্লাহ তায়ালার নামে আরম্ভ করছি। আমি দ্বীন ইসলামের উপর আছি। তাই আল্লাহর জন্য যাবতীয় প্রশংসা।নিশ্চই ইসলাম সত্য ও কুফুর বাতিল এবং ইসলাম আলো ও কুফুর অন্ধকার।'''),
                Text('''ওযুর চার ফরয''',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('''১. সমস্ত মুখমন্ডল কপালের উপরিভাগের চুলের গোড়া হইতে থুতনী পর্যন্ত, এক কর্নের লতি থেকে অন্য কর্নের লতি পর্যন্ত ধৌত করা।'''),
                    Text('''২.উভয় হাত কনুইসহ ধৌত করা।'''),
                    Text('''৩.চারভাগের একভাগ মাথা মাসেহ করা ( ঘন দাঁড়ি থাকিলে আঙ্গুলী দ্বারা খেলাল করা ফরয )।'''),
                    Text('''৪.উভয় পা টাখনু গিরা সহকারে ধৌত করা ।'''),
                  ],
                ),
                SizedBox(height: 20,),
                Text('''ওযুর ১৪টি সুন্নাত''',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('''১.নিয়ত করা'''),
                    Text('''২.বিসমিল্লাহ্‌ বলে ওযু শুরু করা'''),
                    Text('''৩.হাতের আঙ্গুল খিলাল করা'''),
                    Text('''৪.উভয় হাত কবজি পর্যন্ত ধৌত করা'''),
                    Text('''৫.মিসওয়াক করা'''),
                    Text('''৬.তিনবার কুলি করা'''),
                    Text('''.তিনবার নাকে পানি দেয়া'''),
                    Text('''৮.সম্পূর্ন মুখ মন্ডল তিনবার ধৌত করা'''),
                    Text('''৯.উভয় হাতের কনুইসহ তিনবার ধৌত করা'''),
                    Text('''১০.সমস্ত মাথা একবার মাসেহ করা'''),
                    Text('''১১.টাখনু সহ উভয় পা তিবার ধৌত করা'''),
                    Text('''১২.পায়ের আঙ্গুল খিলাল করা'''),
                    Text('''১৩.এক অঙ্গ শুকানোর পূর্বে অন্য অঙ্গ ধৌত করা'''),
                    Text('''১৪.ধারাবাহিকতা বজায় রেখে ওযুর কাজ গুলো সম্পূর্ন করা'''),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
