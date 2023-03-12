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
        title: Text('মসজিদ'),
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
                    Text('''মসজিদে প্রবেশের দোয়া''',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    SizedBox(height: 10,),
                    Text('''اللَّهمَّ افتَحْ لِيْ أبوابَ رَحْمَتِك'''),
                    Text('''আল্লাহুম্মাফ তাহলি আবওয়াবা রহমাতিক'''),
                    Text('''হে আল্লাহ! আমার জন্য আপনার রহমতের দরজাগুলো খুলে দিন'''),
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('''মসজিদ থেকে বের হওয়ার দোয়া''',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                    ),
                    SizedBox(height: 10,),
                    Text('''اَللّٰهمَّ اِنِّي اَسْٮَٔلُكَ مِنْ فَضْلِكِ'''),
                    Text('''আল্লাহুম্মা ইন্নী আসআলূকা মিস ফাযলিকা'''),
                    Text('''হে আল্লাহ আমি আপনার দয়া প্রার্থনা করি'''),
                  ],
                ),
                SizedBox(height: 20,),
                Center(
                  child: Text('''মসজিদে প্রবেশ করার সুন্নত ৫টি''',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ),
                SizedBox(height: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('১. বিসমিল্লাহ বলা'),
                    Text('২. দরূদ শরীফ পড়া'),
                    Text('৩. দো’আ পড়া'),
                    Text('৪. মসজিদে প্রবেশ করার সময় প্রথমে ডান পা ঢুকান'),
                    Text('৫.  এ’তেকাফের নিয়ত করা'),
                  ],
                ),

                SizedBox(height: 20,),
                Center(
                  child: Text('''মসজিদে বের হওয়ার সুন্নত ৫টি''',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ),
                SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('১. বিসমিল্লাহ বলা'),
                    Text('২. দরূদ শরীফ পড়া'),
                    Text('৩. দো’আ পড়া'),
                    Text('৪. প্রথমে বাম পা মসজিদ হতে বের করা'),
                    Text(' ৫. ডান পায়ে জুতা আগে পরিধান করা'),
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
