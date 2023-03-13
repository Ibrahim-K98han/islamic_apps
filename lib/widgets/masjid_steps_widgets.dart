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
    Step('মসজিদে প্রবেশের দোয়া', '''
اللَّهمَّ افتَحْ لِيْ أبوابَ رَحْمَتِك
আল্লাহুম্মাফ তাহলি আবওয়াবা রহমাতিক
হে আল্লাহ! আমার জন্য আপনার রহমতের দরজাগুলো খুলে দিন'''),
    Step('মসজিদ থেকে বের হওয়ার দোয়া', ''' 
  اَللّٰهمَّ اِنِّي اَسْٮَٔلُكَ مِنْ فَضْلِكِ
 আল্লাহুম্মা ইন্নী আসআলূকা মিস ফাযলিকা
  হে আল্লাহ আমি আপনার দয়া প্রার্থনা করি'''),
    Step('মসজিদে প্রবেশ করার সুন্নত ৫টি', '''
১. বিসমিল্লাহ বলা
২. দরূদ শরীফ পড়া
৩. দো’আ পড়া
৪. মসজিদে প্রবেশ করার সময় প্রথমে ডান পা ঢুকান
৫.  এ’তেকাফের নিয়ত করা'''),
    Step('মসজিদে বের হওয়ার সুন্নত ৫টি', '''
১. বিসমিল্লাহ বলা
২. দরূদ শরীফ পড়া
৩. দো’আ পড়া
৪. প্রথমে বাম পা মসজিদ হতে বের করা
৫. ডান পায়ে জুতা আগে পরিধান করা'''),
  ];
}

class MasjidSteps extends StatefulWidget {
  const MasjidSteps({Key? key}) : super(key: key);

  @override
  State<MasjidSteps> createState() => _SuraStepsState();
}

class _SuraStepsState extends State<MasjidSteps> {
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
