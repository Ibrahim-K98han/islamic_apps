import 'package:flutter/material.dart';

class Step {
  Step(this.heading, this.subHeading, [this.isExpanded = false]);

  String heading;
  String subHeading;

  // String subHeading1;
  // String subHeading2;
  // String subHeading3;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('তায়াম্মুমের হুকুম', '''
পানির অনুপস্থিতে অথবা পানি ব্যবহার করা অসম্ভব হলে যেসব বিষয়ের জন্য পবিত্রতা ফরজ সেসবের জন্য তায়াম্মুম করা ফরজ। আর যেসবের জন্য পবিত্রতা মুস্তাহাব সেসবের জন্য তায়াম্মুম করা মুস্তাহাব, যেমন কুরআন তিলাওয়াত করা।'''),
    Step('তায়াম্মুম শরীয়তভুক্ত হওয়ার দলিল',
        '''১- আল্লাহ তাআলা বলেন,

(فَلَمۡ تَجِدُواْ مَآءٗ فَتَيَمَّمُواْ صَعِيدٗا طَيِّبٗا فَٱمۡسَحُواْ بِوُجُوهِكُمۡ وَأَيۡدِيكُم مِّنۡهُۚ )

{অতঃপর পানি না পাও, তবে পবিত্র মাটি দ্বারা তায়াম্মুম করো। সুতরাং তোমাদের মুখ ও হাত তা দ্বারা মাসেহ করো।}
[সূরা আল মায়েদা:৬]

২- নবী সাল্লাল্লাহু আলাইহি ওয়া সাল্লাম বলেন, ‘আমাকে এমন পাঁচটি জিনিস দেয়া হয়েছে যা আমার পূর্বে কাউকে দেয়া হয়নি: একমাস হেঁটে আসার দূরত্ব পর্যন্ত আমার ভীতি বিস্তৃত করে আমাকে সাহায্য করা হয়েছে। আর সমস্ত জমিন আমার জন্য মসজিদ ও পবিত্র করে দেয়া হয়েছে। অতঃপর আমার উম্মতের কোনো ব্যক্তির যখন নামাজের সময় হবে তখন সে যেন তা পড়ে নেয়।’(বর্ণনায় বুখারী)'''),
    Step('তায়াম্মুম শরীয়তভুক্ত হওয়ার হিকমত',
        '''
১- উম্মতে মুহাম্মদীর জন্য সহজ করা

২- যেসব অবস্থায় পানি ব্যবহারের ফলে ক্ষতির আশঙ্কা থাকে তা দূর করা, যেমন অসুস্থ হয়ে পড়া, প্রচণ্ড ঠাণ্ডা থাকা ইত্যাদি।

৩- ইবাদতের সাথে সম্পর্ক অব্যাহত রাখা, পানি না থাকার কারণে ইবাদত থেকে বিচ্ছিন্ন হয়ে না যাওয়া।'''),
    Step('তায়াম্মুম করা কখন বৈধ?',
        '''
১- পানির অনুপস্থিতিতে
আল্লাহ তাআলা বলেন, (فَلَمۡ تَجِدُواْ مَآءٗ فَتَيَمَّمُواْ) {অতঃপর পানি না পাও, তবে তায়াম্মুম করো।}

২- পানি থাকা সত্ত্বেও তা ব্যবহার করতে অপারগ হলে
যেমন অসুস্থ অথবা বৃদ্ধ ব্যক্তি যে নড়াচড়া করতে পারে না এবং তার কাছে এমন ব্যক্তিও নেই যে তাকে অজু করার ব্যাপারে সাহায্য করবে।

৩ - পানি ব্যবহার করার ফলে ক্ষতি হওয়ার আশঙ্কা থাকলে
যেমন :

ক - অসুস্থ ব্যক্তি যদি পানি ব্যবহার করে তবে তার অসুস্থতা বেড়ে যাবে।

খ – প্রচন্ড ঠান্ডায় যদি পানি গরম করার মতো কিছু না থাকে এবং পানি ব্যবহার করলে অসুস্থতা বেড়ে যাবে এ ধারণার পাল্লা ভারি থাকে, এ অবস্থায় তায়াম্মুম করার অনুমতি রয়েছে। রাসূলুল্লাহ সাল্লাল্লাহু আলাইহি ওয়া সাল্লাম কর্তৃক, প্রচন্ড ঠান্ডা থাকার কারণে তায়াম্মুম করে নামাজের ইমামতি করার পর, আমর বিন আস রাযি. এর কাজকে নাকচ করে না দেয়া এ ক্ষেত্রে প্রমাণ। (বর্ণনায় আবু দাউদ)

গ - কোনো ব্যক্তি যদি পানি থেকে দূরে কোথাও অবস্থান করে এবং তার সাথে পান করার মতো সামান্য পানি থাকে আর অন্য পানি হাজির করতে অপরাগ হয়।'''),
    Step('তায়াম্মুমের বর্ণনা',
        '''
মাটিতে একবার উভয় হাত মারবে

 এরপর ধুলা হালকা করার জন্য দু’হাতে ফুঁ দেবে।

 এরপর দু’হাত দিয়ে চেহারা মাসেহ করবে।

 এরপর আবার মাটিতে দু’হাত মারবে।

 এরপর ধুলা হালকা করার জন্য দু’হাতে ফুঁ দেবে।

 এরপর বাম হাত ডান হাতের উপরের অংশে কনুই র্পযন্ত বুলাবে।এবং কনুই থেকে নিচের অংশে কব্জি র্পযন্ত বুলাবে। অতঃপর একই কায়দায় ডান হাত দিয়ে বাম হাত বুলাবে।

 উল্লেখিত পদ্ধতিতে তায়াম্মুম করার দলিল হলো, রাসূলুল্লাহ সাল্লাল্লাহু আলাইহি ওয়া সাল্লাম বলেছেন, ‘তায়াম্মুম হলো জমিনে দু’বার হাত মারা। একবার চেহারার জন্য, অন্যবার কনুই পর্যন্ত দু’হাতের জন্য’।(বর্ণনায় বুখারী ও মুসলিম)'''),
    Step('তায়াম্মুমের ফরজসমূহ',
        '''
১. নিয়ত করা।
২. চেহারা মাসেহ করা।
৩. দু’হাত মাসেহ করা।
ইমামদের কেউ কেউ আরো কয়েকটি বিষয় ফরজ বলে গণ্য করেছেন। আর তা হলো :
৪. ধারাবাহিকতা রক্ষা করা। অর্থাৎ প্রথমে চেহারা ও পরে দু’হাত মাসেহ করা।
৫. মুয়ালাত তথা অবিচ্ছিন্নতা বজায় রাখা। অর্থাৎ চেহারা মাসেহ করার পর বিলম্ব না করে হাত মাসেহ করা।'''),
  
  ];
}

class TayamumSteps extends StatefulWidget {
  const TayamumSteps({Key? key}) : super(key: key);

  @override
  State<TayamumSteps> createState() => _SuraStepsState();
}

class _SuraStepsState extends State<TayamumSteps> {
  final List<Step> _steps = getSteps();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            child: _renderSteps(),
          ),
        ],
      ),
    );
  }

  Widget _renderSteps() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ExpansionPanelList(
        elevation: 0,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _steps[index].isExpanded = !isExpanded;
          });
        },
        children: _steps.map<ExpansionPanel>((Step step) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(
                  step.heading,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              );
            },
            body: Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      step.subHeading,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            isExpanded: step.isExpanded,
          );
        }).toList(),
      ),
    );
  }
}
