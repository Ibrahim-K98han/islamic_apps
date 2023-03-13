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
    Step('অযুর দোয়া ও নিয়ত এবং অযুর করার নিয়ম', '''
بسم الله العلي العظيم والحمد لله علي دين الاسلام الاسلام حق والكفر باطل الاسلام نور والكفر ظلمةُ

বাংলা উচ্চারণঃ বিসমিল্লাহিল আলিয়্যিল আজিম। ওয়াল হামদুলিল্লাহি আলা দ্বীনিল ইসলাম। আল ইসলামু হাক্কুন। ওয়াল কুফরু বাতিলুন। ওয়াল ইসলামু নুরুন। ওয়াল কুফরু জুলমাত।
অর্থঃ মহান ও পরাক্রান্ত আল্লাহ তায়ালার নামে আরম্ভ করছি। আমি দ্বীন ইসলামের উপর আছি। তাই আল্লাহর জন্য যাবতীয় প্রশংসা।নিশ্চই ইসলাম সত্য ও কুফুর বাতিল এবং ইসলাম আলো ও কুফুর অন্ধকার।
'''),
    Step('ওযুর চার ফরয',
        '''
১. সমস্ত মুখমন্ডল কপালের উপরিভাগের চুলের গোড়া হইতে থুতনী পর্যন্ত, এক কর্নের লতি থেকে অন্য কর্নের লতি পর্যন্ত ধৌত করা।
২.উভয় হাত কনুইসহ ধৌত করা।
৩.চারভাগের একভাগ মাথা মাসেহ করা ( ঘন দাঁড়ি থাকিলে আঙ্গুলী দ্বারা খেলাল করা ফরয )।
৪.উভয় পা টাখনু গিরা সহকারে ধৌত করা ।
'''),
 Step('ওযুর ১৪টি সুন্নাত',
        '''
১.নিয়ত করা
২.বিসমিল্লাহ্‌ বলে ওযু শুরু করা
৩.হাতের আঙ্গুল খিলাল করা
৪.উভয় হাত কবজি পর্যন্ত ধৌত করা
৫.মিসওয়াক করা
৬.তিনবার কুলি করা
.তিনবার নাকে পানি দেয়া
৮.সম্পূর্ন মুখ মন্ডল তিনবার ধৌত করা
৯.উভয় হাতের কনুইসহ তিনবার ধৌত করা
১০.সমস্ত মাথা একবার মাসেহ করা
১১.টাখনু সহ উভয় পা তিবার ধৌত করা
১২.পায়ের আঙ্গুল খিলাল করা
১৩.এক অঙ্গ শুকানোর পূর্বে অন্য অঙ্গ ধৌত করা
১৪.ধারাবাহিকতা বজায় রেখে ওযুর কাজ গুলো সম্পূর্ন করা
'''),
  ];
}

class OjuSteps extends StatefulWidget {
  const OjuSteps({Key? key}) : super(key: key);

  @override
  State<OjuSteps> createState() => _SuraStepsState();
}

class _SuraStepsState extends State<OjuSteps> {
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
