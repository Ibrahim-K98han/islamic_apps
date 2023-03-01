import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/azan_widgets.dart';

class AzanPage extends StatefulWidget {
  const AzanPage({super.key});

  @override
  State<AzanPage> createState() => _AzanPageState();
}

class _AzanPageState extends State<AzanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('আজান'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('''আজান ও আজানের উওর''',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                SizedBox(height: 10,),
                AzanWidgets(
                    azanArabic: '''اللهُ أَكْبَرُ – اللهُ أَكْبَرُ''',
                    azanBangla: '''আল্লাহু আকবার - ৪ বার''',
                    azanUccharon: '''আল্লাহ সর্বশক্তিমান'''),
                AzanWidgets(
                    azanArabic: '''أَشْهَدُ أَن لاَّ إلَهَ إِلاَّ اللهُ	''',
                    azanBangla: '''আশহাদু আল লা-ইলা-হা ইল্লাল্লা-হ - ২ বার ''',
                    azanUccharon:
                        '''আমি সাক্ষ্য দিচ্ছি যে, আল্লাহ  ছাড়া কোন ইলাহ নেই'''),
                AzanWidgets(
                    azanArabic:
                        '''أَشْهَدُ أَنَّ مُحَمَّدًا رَّسُوْلُ اللهِ	''',
                    azanBangla:
                        '''আশহাদু আন্না মুহাম্মাদার রাসূলুল্লা-হ - ২ বার''',
                    azanUccharon:
                        '''আমি সাক্ষ্য দিচ্ছি যে, মুহাম্মাদ (সাঃ) আল্লাহর রসূল	'''),
                AzanWidgets(
                    azanArabic: '''َحَيَّ عَلَى الصَّلاَةِ	''',
                    azanBangla: '''হাইয়া ‘আলাছ ছলা-হ’ - ২ বার ''',
                    azanUccharon: '''ছলাতের জন্য এসো	'''),
                AzanWidgets(
                    azanArabic: '''َحَيَّ عَلَى الْفَلاَحِ	''',
                    azanBangla: '''হাইয়া ‘আলাল ফালা-হ	 - ২ বার ''',
                    azanUccharon: '''কল্যাণের জন্য এসো'''),
                AzanWidgets(
                    azanArabic: '''َاللهُ أَكْبَرُ – اللهُ أَكْبَرُ	''',
                    azanBangla: '''আল্লা-হু আকবার – আল্লা-হু আকবার - ২ বার ''',
                    azanUccharon:
                        '''আল্লাহ সর্ব শ্রেষ্ঠ – আল্লাহ সর্ব শ্রেষ্ঠ'''),
                AzanWidgets(
                    azanArabic: '''لآ إلَهَ إِلاَّ اللهُ	''',
                    azanBangla: '''লা ইলা-হা ইল্লাল্লা-হ - ১ বার ''',
                    azanUccharon: '''আল্লাহ ছাড়া কোন ইলাহ নেই'''),
                SizedBox(height: 20,),
                Text('''আজান শেষে পড়বার দু’আ''',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AzanWidgets(
                      azanArabic:
                          '''ﺍﻟﻠَّﻬُﻢَّ ﺭَﺏَّ ﻫَﺬِﻩِ ﺍﻟﺪَّﻋْﻮَﺓِ ﺍﻟﺘَّﺎﻣَّﺔِ، ﻭَﺍﻟﺼَّﻼَﺓِ ﺍﻟْﻘَﺎﺋِﻤَﺔِ، ﺁﺕِ ﻣُﺤَﻤَّﺪﺍً ﺍﻟْﻮَﺳِﻴﻠَﺔَ
ﻭَﺍﻟْﻔَﻀِﻴﻠَﺔَ، ﻭَﺍﺑْﻌَﺜْﻪُ ﻣَﻘَﺎﻣَﺎً ﻣَﺤﻤُﻮﺩﺍً ﺍﻟَّﺬِﻱ ﻭَﻋَﺪْﺗَﻪُ، ﺇِﻧَّﻚَ ﻟَﺎ ﺗُﺨْﻠِﻒُ ﺍﻟْﻤِﻴﻌَﺎﺩَ ''',
                      azanBangla:
                          '''বাংলা উচ্চারণ : আল্লা-হুম্মা রববা হা-যিহিদ্ দা‘ওয়াতিত্ তা-ম্মাতি ওয়াস সালা-তিল ক্বা-’ইমাতি আ-তি মুহাম্মাদানিল ওয়াসীলাতা ওয়াল ফাদীলাতা ওয়াব্‘আছহু মাক্বা-মাম
মাহমূদানিল্লাযী ওয়া‘আদতাহ, ইন্নাকা লা তুখলিফুল মী‘আদ।''',
                      azanUccharon:
                          '''বাংলা অর্থ : হে আল্লাহ! এই পরিপূর্ণ আহ্বান এবং প্রতিষ্ঠিত সালাতের রব্ব! মুহাম্মাদ (সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম) কে ওসীলা তথা জান্নাতের একটি স্তর এবং ফযীলত তথা সকল সৃষ্টির উপর অতিরিক্ত মর্যাদা দান করুন। আর তাঁকে মাকামে মাহমূদে (প্রশংসিত
স্থানে) পৌঁছে দিন, যার প্রতিশ্রুতি আপনি তাঁকে দিয়েছেন। নিশ্চয় আপনি প্রতিশ্রুতি ভঙ্গ করেন না।'''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
