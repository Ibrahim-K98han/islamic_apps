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
    Step('সূরা ফাতিহা', '''بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ

الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ 

الرَّحْمَٰنِ الرَّحِيمِ 

مَالِكِ يَوْمِ الدِّينِ 

إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُu 

اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ 

صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ 
    
উচ্চারণঃ

বিসমিল্লাহির রাহমানির রাহিম ।

১.আলহামদুলিল্লাহি রাব্বীল আলামীন।

২ .আররাহমানির রাহীম।

৩.মা-লিকী ইয়াউমিদ্দ্বীন।

৪ .ইয়্যাকা-নাবুদু ওয়া ইয়্যাকা নাসতায়ীন।

৫.ইহদিনাস-সিরাতাল মুসতাক্বীম।

৬. সিরাত্বাল লাযিনা আন-আমতা আলাইহিম।গাইরিল মাগদুবি আলাইহিম। ওয়ালাদ্দুয়াল্লীন আমীন।


বাংলা অর্থঃ

শুরু করছি আল্লাহর নামে যিনি পরম করুণাময়,অতি দয়ালু।

১.যাবতীয় প্রশংসা আল্লাহ তা আলার যিনি সকল সৃষ্টি জগতের পালনকর্তা।

২.যিনি নিতান্ত মেহেরবান ও দয়ালু।

৩.যিনি বিচার দিনের মালিক।

৪.আমরা একমাত্র তোমারই ইবাদত করি এবং শুধুমাত্র তোমারই সাহায্য প্রার্থনা করি।

৫. আমাদেরকে সরল পথ দেখাও।

৬.সে সমস্ত লোকের পথ,যাদেরকে তুমি নেয়ামত দান করেছ। তাদের পথ নয়,যাদের প্রতি তোমার গজব নাযিল হয়েছে এবং যারা পথভ্রষ্ট হয়েছে। 
'''),
    Step('সূরা নাস',
        '''قُلْ أَعُوْذُ بِرَبِّ النَّاسِ (১) مَلِكِ النَّاسِ (২) إِلهِ النَّاسِ (৩) مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ (৪) اَلَّذِيْ يُوَسْوِسُ فِي صُدُوْرِ النَّاسِ (৫) مِنَ الْجِنَّةِ وَالنَّاسِ (৬)

উচ্চারণ:- ক্বুল আঊযু বিরব্বিন্‌ না-স। মালিকিন্‌ না-স। ইলা-হিন্‌ না-স। মিন্‌ শার্রিল অসওয়া-সিল খান্না-স। আল্লাযী ইউওয়াসবিসু ফী সুদূরিন্‌ না-স। মিনাল জিন্নাতি অন্‌ না-স।

অর্থ:- তুমি বল, আমি আশ্রয় প্রার্থনা করছি, মানুষের প্রতিপালক, মানুষের অধীশ্বর, মানুষের উপাস্যের কাছে- তার কুমন্ত্রণার অনিষ্ট হতে, যে সুযোগমত আসে ও (কুমন্ত্রণা দিয়ে) সরে পড়ে। যে কুমন্ত্রণা দেয় মানুষের হৃদয়ে, জিন ও মানুষের মধ্য হতে।

'''),
    Step('সূরা ফালাক্ব',
        ''' قُلْ أَعُوْذُ بِرَبِّ الْفَلَقِ (১) مِنْ شَرِّ مَا خَلَقَ (২) وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ (৩) وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ (৪) وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ (৫)

উচ্চারণ:- ক্বুল আঊযু বিরব্বিল ফালাক্ব। মিন শার্রি মা খালাক্ব। অমিন শার্রি গা-সিক্বিন ইযা অক্বাব। অমিন শার্রিন্‌ নাফ্‌ফা-ষা-তি ফিল উক্বাদ। অমিন শার্রিহা-সিদিন ইযাহাসাদ।

অর্থ:- তুমি বল, আমি আশ্রয় প্রার্থনা করছি ঊষার প্রভুর নিকট। তিনি যা সৃষ্টি করেছেন তার অনিষ্ট হতে। এবং রাতের অনিষ্ট হতে যখন তা গভীর অন্ধকারে আচ্ছন্ন হয়। এবং গ্রন্থিতে ফুত্কারিণী (যাদুকরী)দের অনিষ্ট হতে। এবং হিংসুকের অনিষ্ট হতে যখন সে হিংসা করে।

'''),
    Step('সূরা ইখলাস', '''قُلْ هُوَ اللهُ أَحَدٌ (১) اَللهُ الصَّمَدُ (২) لَمْ يَلِدْ وَلَمْ يُوْلَدْ (৩) وَلَمْ يَكُنْ لَّهُ كُفُواً أَحَدٌ (৪)

উচ্চারণ:- ক্বুল হুওয়াল্লা-হু আহাদ। আল্লা-হুস সামাদ। লাম য়্যালিদ, অলাম ইউলাদ। অলাম য়্যাকুল্‌ লাহু কুফুওয়ান আহাদ।

অর্থ:- বল, তিনি আল্লাহ একক। আল্লাহ ভরসাস্থল। তিনি জনক নন এবং জাতকও নন। আর তাঁর সমকক্ষ কেউই নেই।

'''),
    Step('সূরা লাহাব', '''تَبَّتْ يَدَا أَبِيْ لَهَبٍ وَّتَبَّ (১) مَا أَغْنى عَنْهُ مَالُهُ وَمَا كَسَبَ (২) سَيَصْلى نَاراً ذَاتَ لَهَبٍ (৩) وَامْرَأَتُهُ حَمَّالَةَ الْحَطَبِ (৪) فِيْ جِيْدِهَا حَبْلٌ مِّنْ مَّسَدٍ (৫)

উচ্চারণ:- তাব্বাৎ য়্যাদা আবী লাহাবিঁউঅতাব্ব মা আগনা আনহু মা-লুহু অমা কাসাব। সায়্যাস্বলা না-রান যা-তা লাহাব। অমরাআতুহুহাম্মা-লাতালহাত্বাব। ফী জীদিহাহাবলুম মিম মাসাদ।

অর্থ:- ধ্বংস হোক আবূ লাহাবের দুইহাত এবং ধ্বংস হোক সে নিজেও। তার ধন-সম্পদ ও উপর্জিত বস্তু তার কোন উপকারে আসবে না। সে প্রবেশ করবে লেলিহান শিখাবিশিষ্ট অগ্নিকুন্ডে। আর তার স্ত্রীও -যে কাঠের বোঝা বহনকারিণী। ওর গলদেশে খেজুর চোকার রশি হবে।

'''),
    Step('সূরা নাস্বর',
        '''إِذَا جَاءَ نَصْرُ اللهِ وَالْفَتْحُ (১) وَرَأَيْتَ النَّاسَ يَدْخُلُوْنَ فِيْ دِيْنِ اللهِ أَفْوَاجاً (২) فَسَبِّحْ بِحَمْدِ رَبِّكَ وَاسْتَغْفِرْهُ إِنَّهُ كَانَ تَوَّاباً (৩)

উচ্চারণ:- ইযা জা-আ নাস্বরুল্লা-হি অল ফাতহ। অরাআইতান্‌ না-সা ইয়্যাদখুলুনা ফী দ্বীনিল্লা-হি আফওয়াজা। ফাসাব্বিহ্‌ বিহামদি রাব্বিকা অস্তাগফিরহু; ইন্নাহু কা-না তাউওয়া-বা।

অর্থ:- যখন আসবে আল্লাহর সাহায্য ও বিজয়। তুমি দেখবে মানুষকে দলে দলে আল্লাহর দ্বীনে প্রবেশ করতে। তখন তুমি তোমার প্রতিপালকের সপ্রশংস পবিত্রতা ঘোষণা কর এবং তাঁর নিকট ক্ষমা প্রার্থনা কর। নিশ্চয় তিনি ক্ষমাশীল।

'''),
    Step('সূরা কা-ফিরুন',
        '''قُلْ يَا أَيُّهَا الْكَافِرُوْنَ (১) لاَ أَعْبُدُ مَا تَعْبُدُوْنَ (২) وَلاَ أَنْتُمْ عَابِدُوْنَ مَا أَعْبُدُ (৩) وَلاَ أَنَا عَابِدٌ مَّا عَبَدْتُّمْ (৪) وَلاَ أَنْتُمْ عَابِدُوْنَ مَا أَعْبُدُ (৫) لَكُمْ دِيْنُكُمْ وَلِيَ دِيْنِ (৬)

উচ্চারণ:- ক্বুল ইয়া আই য়ুহাল কা-ফিরুন। লা- আ’বুদু মা- তা’বুদূন। অলা- আন্তুম আ’-বিদূনা মা- আ’বুদ। অলা- আনা আ’-বিদুম মা আ’বাত্তুম। অলা- আন্তুম আ’-বিদূনা মা- আ’বুদ। লাকুম দ্বীনুকুম অলিয়া দ্বীন।

অর্থ:- বল, হে কাফের দল! আমি তার উপাসনা করি না, যার উপাসনা তোমরা কর। তোমরাও তাঁর উপাসক নও, যাঁর উপাসনা আমি করি। আমি তার উপাসক হ্‌ব না, যার উপাসনা তোমরা কর। আর তোমরাও তাঁর উপাসক নও, যাঁর উপাসনা আমি করি। তোমাদের ধর্ম তোমাদের এবং আমার ধর্ম আমার (কাছে প্রিয়)।

'''),
    Step('সূরা কাউষার',
        '''إِنَّا أَعْطَيْنَاكَ الْكَوْثَرَ (১) فَصَلِّ لِرَبِّكَ وَانْحَرْ (২) إِنَّ شَانِئَكَ هُوَ الأَبْتَرُ (৩)

উচ্চারণ:- ইন্না- আ’ত্বাইনা-কাল কাউষার। ফাস্বাল্লি লিরব্বিকা অন্‌হার। ইন্না- শা-নিআকা হুওয়াল আবতার।

অর্থ:- নিঃসন্দেহে আমি তোমাকে কাউসার (হাওয) দান করেছি। সুতরাং তুমি তোমার প্রতিপালকের উদ্দেশ্যে নামায পড় এবং কুরবানী কর। নিশ্চয় তোমার শত্রুই হল নির্বংশ।

'''),
    Step('সূরা ক্বুরাইশ',
        '''لإِيْلاَفِ قُرَيْشٍ (১) إِيْلاَفِهِمْ رِحْلَةَ الشِّتَاءِ وَالصَّيْفِ (২) فَلْيَعْبُدُوْا رَبَّ هذَا الْبَيْتِ (৩) اَلَّذِيْ أَطْعَمَهُمْ مِنْ جُوْعٍ وَّآمَنَهُمْ مِّنْ خَوْفٍ (৪)

উচ্চারণ:- লিঈলা-ফি ক্বুরাইশ্‌ ঈলা-ফিহিম রিহ্‌লাতাশ শিতা-ই অস্‌স্বাইফ্‌ ফাল য়্যা’বুদু রব্বাহা-যাল বাইত্ আল্লাযী আত্বআমাহুম মিন জু’ । অআ-মানাহুম মিন খাঊফ।

অর্থ:- যেহেতু কুরাইশের জন্য শীত ও গ্রীষ্মের সফরকে তাদের স্বভাব সুলভ করা হয়েছে, সেহেতু ওরা উপাসনা করুক এই গৃহের রক্ষকের। যিনি ক্ষুধায় ওদেরকে আহার দিয়েছেন এবং ভীতি হতে নিরাপদ করেছেন।

'''),
    Step('সূরা ফীল',
        '''أَلَمْ تَرَ كَيْفَ فَعَلَ رَبُّكَ بِأَصْحَابِ الْفِيْلِ (১) أَلَمْ يَجْعَلْ كَيْدَهُمْ فِيْ تَضْلِيْلٍ (২) وَأَرْسَلَ عَلَيْهِمْ طَيْراً أَبَابِيْلَ (৩) تَرْمِيْهِمْ بِحِجَارَةٍ مِّنْ سِجِّيْلٍ (৪) فَجَعَلَهُمْ كَعَصْفٍ مَّأْكُوْلٍ (৫)

উচ্চারণ:- আলাম তারা কাইফা ফাআলা রব্বুকা বিআস্বহা-বিল ফীল। আলাম য়্যাজ্‌আল কাইদাহুম ফী তায্বলীল। অআরসালা আলাইহিম ত্বাইরান আবা-বিল। তারমীহিম বিহিজারাতিম মিন সিজ্জীল। ফাজাআলাহুম কাআস্বফিম মা’কূল।

অর্থ:- তুমি কি দেখ নি, তোমার প্রতিপালক হ্‌স্তীবাহিনীর সঙ্গে কি করেছিলেন? তিনি কি ওদের কৌশলকে ব্যর্থ করে দেন নি? তিনি তাদের উপর ঝাঁকে ঝাঁকে পাখি প্রেরণ করেন। যারা ওদের উপর নিক্ষেপ করে কঙ্কর। অতঃপর তিনি ওদেরকে ভক্ষিত তৃণসদৃশ করে দেন।

'''),
  ];
}

class SuraSteps extends StatefulWidget {
  const SuraSteps({Key? key}) : super(key: key);

  @override
  State<SuraSteps> createState() => _SuraStepsState();
}

class _SuraStepsState extends State<SuraSteps> {
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
