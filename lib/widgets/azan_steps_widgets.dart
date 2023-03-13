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
    Step('আজান ও আজানের উওর', '''
اللهُ أَكْبَرُ – اللهُ أَكْبَرُ
আল্লাহু আকবার - ৪ বার
আল্লাহ সর্বশক্তিমান

أَشْهَدُ أَن لاَّ إلَهَ إِلاَّ اللهُ	
আশহাদু আল লা-ইলা-হা ইল্লাল্লা-হ - ২ বার 
আমি সাক্ষ্য দিচ্ছি যে, আল্লাহ  ছাড়া কোন ইলাহ নেই

أَشْهَدُ أَنَّ مُحَمَّدًا رَّسُوْلُ اللهِ	
আশহাদু আন্না মুহাম্মাদার রাসূলুল্লা-হ - ২ বার
আমি সাক্ষ্য দিচ্ছি যে, মুহাম্মাদ (সাঃ) আল্লাহর রসূল

حَيَّ عَلَى الصَّلاَةِ	
হাইয়া ‘আলাছ ছলা-হ’ - ২ বার 
ছলাতের জন্য এসো	

حَيَّ عَلَى الْفَلاَحِ	
হাইয়া ‘আলাল ফালা-হ	 - ২ বার 
কল্যাণের জন্য এসো

اللهُ أَكْبَرُ – اللهُ أَكْبَرُ	
আল্লা-হু আকবার – আল্লা-হু আকবার - ২ বার
আল্লাহ সর্ব শ্রেষ্ঠ – আল্লাহ সর্ব শ্রেষ্ঠ

لآ إلَهَ إِلاَّ اللهُ	
লা ইলা-হা ইল্লাল্লা-হ - ১ বার
আল্লাহ ছাড়া কোন ইলাহ নেই

'''),
    Step('আজান শেষে পড়বার দু’আ',
        '''ﺍﻟﻠَّﻬُﻢَّ ﺭَﺏَّ ﻫَﺬِﻩِ ﺍﻟﺪَّﻋْﻮَﺓِ ﺍﻟﺘَّﺎﻣَّﺔِ، ﻭَﺍﻟﺼَّﻼَﺓِ ﺍﻟْﻘَﺎﺋِﻤَﺔِ، ﺁﺕِ ﻣُﺤَﻤَّﺪﺍً ﺍﻟْﻮَﺳِﻴﻠَﺔَ
ﻭَﺍﻟْﻔَﻀِﻴﻠَﺔَ، ﻭَﺍﺑْﻌَﺜْﻪُ ﻣَﻘَﺎﻣَﺎً ﻣَﺤﻤُﻮﺩﺍً ﺍﻟَّﺬِﻱ ﻭَﻋَﺪْﺗَﻪُ، ﺇِﻧَّﻚَ ﻟَﺎ ﺗُﺨْﻠِﻒُ ﺍﻟْﻤِﻴﻌَﺎﺩَ 

বাংলা উচ্চারণ : আল্লা-হুম্মা রববা হা-যিহিদ্ দা‘ওয়াতিত্ তা-ম্মাতি ওয়াস সালা-তিল ক্বা-’ইমাতি আ-তি মুহাম্মাদানিল ওয়াসীলাতা ওয়াল ফাদীলাতা ওয়াব্‘আছহু মাক্বা-মাম
মাহমূদানিল্লাযী ওয়া‘আদতাহ, ইন্নাকা লা তুখলিফুল মী‘আদ।


বাংলা অর্থ : হে আল্লাহ! এই পরিপূর্ণ আহ্বান এবং প্রতিষ্ঠিত সালাতের রব্ব! মুহাম্মাদ (সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম) কে ওসীলা তথা জান্নাতের একটি স্তর এবং ফযীলত তথা সকল সৃষ্টির উপর অতিরিক্ত মর্যাদা দান করুন। আর তাঁকে মাকামে মাহমূদে (প্রশংসিত
স্থানে) পৌঁছে দিন, যার প্রতিশ্রুতি আপনি তাঁকে দিয়েছেন। নিশ্চয় আপনি প্রতিশ্রুতি ভঙ্গ করেন না।
'''),
  ];
}

class AzanSteps extends StatefulWidget {
  const AzanSteps({Key? key}) : super(key: key);

  @override
  State<AzanSteps> createState() => _SuraStepsState();
}

class _SuraStepsState extends State<AzanSteps> {
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
