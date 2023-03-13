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
    Step('গোসলের দোয়া', '''
বাংলা উচ্চারণঃ “নাওয়াইতুয়ান গোছলা লিরাফিল জানাবা-তি।'''),
    Step('ফরজ গোসলের নিয়ত',
        '''
ববাংলা উচ্চারণঃ “নাওয়াইতুল গুছলা লিরাফইল জানাবাতি।
অর্থঃ আমি নাপাকি থেকে পাক হওয়ার জন্য গোসল করছি।'''),
    Step('ফরজ গোসলের নিয়ম',
        '''
গোসলের দোয়া পড়া
তারপর গোসলের নিয়ত করে বিসমিল্লাহ বলে দু হাত কব্জি পর্যন্ত ভালো করে ধৌত করতে হবে।
এরপর শরীরের কোন জায়গায় অপবিত্র বস্তু লেগে থাকলে তা পরিষ্কার করতে হবে।
তারপর অজু করতে হবে। গড়গড়ার সাথে কুলি করতে হবে, রোজাদার হলে গড়গড়া করা যাবে না। তিনবার কুলি করা সুন্নত
তারপর তিনবার নাকে পানি দিয়ে নাক পরিষ্কার করতে হবে
অজুর পর মাথায় এমনভাবে পানি ঢালতে হবে যেন চুলের গোড়া পর্যন্ত পানি পৌঁছে যায়।
এরপর ডান কাঁধে পরে বাম কাঁধে পানি ঢেলে সমস্ত শরীর ধৌত করতে হবে যেন শরীরের কোন অংশ শুকনো না থাকে।
সর্বশেষে পা ধুতে হবে
এরপর সারা শরীর কোন কাপড় বা গামছা দিয়ে মুছে শুকনো কাপড় পড়তে হবে।
'''),
  ];
}

class GosoleSteps extends StatefulWidget {
  const GosoleSteps({Key? key}) : super(key: key);

  @override
  State<GosoleSteps> createState() => _SuraStepsState();
}

class _SuraStepsState extends State<GosoleSteps> {
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
