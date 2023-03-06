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
    Step('ইকামাত',
        '''ইকামত’ (الإقامة) অর্থ দাঁড় করানো। উপস্থিত মুছল্লীদেরকে ছালাতে দাঁড়িয়ে যাওয়ার হুঁশিয়ারী শুনানোর জন্য ‘এক্বামত’ দিতে হয়। জামা‘আতে হউক বা একাকী হউক সকল অবস্থায় ফরয ছালাতে আযান ও এক্বামত দেওয়া সুন্নাত।
    
    ১.	আল্লাহু আকবার   (৪ বার)

    ২.	আশহাদু-আল লা- ইলাহা ইল্লাল্লাহ্   (২ বার)

    ৩.	আশহাদু-আন্না মুহাম্মাদুর রাসূলুল্লাহ্   (২ বার)

    ৪.	হাইয়া আলাছ ছালাহ্    (২ বার)

    ৫.	হাইয়া আলাল ফালাহ্   (২ বার)

    ৬.	ক্বদ ক্বামাতিস্‌ সালাহ  (২ বার)

    ৭.	আল্লাহু আকবার  (২ বার)

    ৮.	লা ইলাহা ইল্লাল্লাহ্   (১ বার)'''),
    Step('তাকবিরে তাহরিমা',
        '''তাকবীরে তাহরীমা : ওযূ করার পর ছালাতের সংকল্প করে ক্বিবলামুখী দাঁড়িয়ে ‘আল্লা-হু আকবর’ বলে দু’হাত কাঁধ বরাবর উঠিয়ে তাকবীরে তাহরীমা শেষে বুকে বাঁধবে। এ সময় বাম হাতের উপরে ডান হাত কনুই বরাবর রাখবে অথবা বাম কব্জির উপরে ডান কব্জি রেখে বুকের উপরে হাত বাঁধবে। অতঃপর সিজদার স্থানে দৃষ্টি রেখে বিনম্রচিত্তে নিম্নোক্ত দো‘আর মাধ্যমে মুছল্লী তার সর্বোত্তম ইবাদতের শুভ সূচনা করবে।-

اَللَّهُمَّ بَاعِدْ بَيْنِيْ وَبَيْنَ خَطَايَايَ كَمَا بَاعَدْتَ بَيْنَ الْمَشْرِقِ وَالْمَغْرِبِ اَللَّهُمَّ نَقِّنِيْ مِنَ الْخَطَايَا كَمَا يُنَقَّى الثَّوْبُ الْأَبْيَضُ مِنَ الدَّنَسِ، اَللَّهُمَّ اغْسِلْ خَطَايَايَ بِالْمَاءِ وَالثَّلْجِ وَالْبَرَد-

উচ্চারণ : আল্লা-হুম্মা বা-‘এদ বায়নী ওয়া বায়না খাত্বা-ইয়া-ইয়া, কামা বা-‘আদতা বায়নাল মাশরিক্বি ওয়াল মাগরিবি। আল্লা-হুম্মা নাকক্বিনী মিনাল খাত্বা-ইয়া, কামা ইউনাকক্বাছ ছাওবুল আব্ইয়াযু মিনাদ দানাসি। আল্লা-হুম্মাগসিল খাত্বা-ইয়া-ইয়া বিল মা-য়ি ওয়াছ ছালজি ওয়াল বারাদি’।

অনুবাদ : হে আল্লাহ! আপনি আমার ও আমার গোনাহ সমূহের মধ্যে এমন দূরত্ব সৃষ্টি করে দিন, যেমন দূরত্ব সৃষ্টি করেছেন পূর্ব ও পশ্চিমের মধ্যে। হে আল্লাহ! আপনি আমাকে পরিচ্ছন্ন করুন গোনাহ সমূহ হ’তে, যেমন পরিচ্ছন্ন করা হয় সাদা কাপড় ময়লা হ’তে। হে আল্লাহ! আপনি আমার গুনাহ সমূহকে ধুয়ে ছাফ করে দিন পানি দ্বারা, বরফ দ্বারা ও শিশির দ্বারা’।[2]

একে ‘ছানা’ বা দো‘আয়ে ইস্তেফতাহ বলা হয়। ছানার জন্য অন্য দো‘আও রয়েছে। তবে এই দো‘আটি সর্বাধিক বিশুদ্ধ।'''),
    Step('সানা',
        '''নামাজে আল্লাহু আকাবার বলে নিয়ত বাঁধার পর প্রথম কাজ হলো- সানা পড়া। এজন্য এটাকে শুরু করার দোয়া বলা হয়। আর এটা পুরা নামাজে একবারই পড়তে হয়, একাধিকবার পড়ার নিয়ম নেই। কেননা, আবু সাঈদ খুদরি (রা.) থেকে বর্ণিত, তিনি বলেন- আল্লাহর রাসুল (সা.) নামাজ শুরু করে (তাকবিরে তাহরিমার পর) বলতেন–

আরবি :

سُبْحَانَكَ اَللَّهُمَّ وَبِحَمْدِكَ وَتَبَارَكَ اسْمُكَ وَتَعَالِىْ جَدُّكَ وَلَا اِلَهَ غَيْرُكَ

উচ্চারণ : সুবহানাকাল্লাহুম্মা ওয়া বিহামদিকা, ওয়া তাবারাকাসমুকা ওয়া তাআ-লা জাদ্দুকা, ওয়ালা ইলাহা গায়রুক।

অর্থ : হে আল্লাহ! আমি আপনার সপ্রশংস পবিত্রতা ঘোষণা করছি, আপনার নাম বরকতপূর্ণ, আপনার মাহাত্ন সুউচ্চ এবং আপনি ব্যতীত কোন ইলাহ নেই)। (সহিহ বুখারি, হাদিস : ৮০৪)'''),
    //Step('আউজুবিল্লাহ ', 'Purchase List'),
    //Step('বিসমিল্লাহ ', 'Purchase List'),
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
              padding: EdgeInsets.only(
                bottom: 10,
              ),
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
