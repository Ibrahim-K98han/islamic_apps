
import 'package:flutter/material.dart';

class Step {
  Step(this.heading, this.subHeading,
      [this.isExpanded = false]);
  String heading;
  String subHeading;
  // String subHeading1;
  // String subHeading2;
  // String subHeading3;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('ইকামাত', '''ইকামত’ (الإقامة) অর্থ দাঁড় করানো। উপস্থিত মুছল্লীদেরকে ছালাতে দাঁড়িয়ে যাওয়ার হুঁশিয়ারী শুনানোর জন্য ‘এক্বামত’ দিতে হয়। জামা‘আতে হউক বা একাকী হউক সকল অবস্থায় ফরয ছালাতে আযান ও এক্বামত দেওয়া সুন্নাত।
    
    ১.	আল্লাহু আকবার   (৪ বার)

    ২.	আশহাদু-আল লা- ইলাহা ইল্লাল্লাহ্   (২ বার)

    ৩.	আশহাদু-আন্না মুহাম্মাদুর রাসূলুল্লাহ্   (২ বার)

    ৪.	হাইয়া আলাছ ছালাহ্    (২ বার)

    ৫.	হাইয়া আলাল ফালাহ্   (২ বার)

    ৬.	ক্বদ ক্বামাতিস্‌ সালাহ  (২ বার)

    ৭.	আল্লাহু আকবার  (২ বার)

    ৮.	লা ইলাহা ইল্লাল্লাহ্   (১ বার)'''),
    Step('তাকবিরে তাহরিমা', 'Purchase List'),
    Step('সানা', 'Purchase List'),
    Step('আউজুবিল্লাহ ', 'Purchase List'),
    Step('বিসমিল্লাহ ', 'Purchase List'),
    Step('রুকুর দোয়া ', 'Purchase List'),
    Step('সিজদার দোয়া ', 'Purchase List'),
    Step('২ সিজদার মধ্যবর্তী দোয়া ', 'Purchase List'),
    Step('তাশাহুদ', 'Purchase List'),
    Step('দরুদ', 'Purchase List'),
    Step('দু’আই মাসুরাহ', 'Purchase List'),
    Step('সালাম', 'Purchase List'),
    Step('দু’আই কুনুত', 'Purchase List'),
    Step('সালাত শেষে দোয়া', 'Purchase List'),
  ];
}


class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);
  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  final List<Step> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
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
              padding: EdgeInsets.only(bottom: 10,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      '${step.subHeading}',
                      style: TextStyle(
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