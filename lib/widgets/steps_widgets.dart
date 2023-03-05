
import 'package:flutter/material.dart';

class Step {
  Step(this.heading, this.subHeading,this.subHeading1,this.subHeading2,this.subHeading3,
      [this.isExpanded = false]);
  String heading;
  String subHeading;
  String subHeading1;
  String subHeading2;
  String subHeading3;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('ইকামাত', 'Purchase List','Order List','VAT List','Product Unit'),
    Step('তাকবিরে তাহরিমা', 'Purchase List','Order List','VAT List','Product Unit'),
    Step('সানা', 'Purchase List','Order List','VAT List','Product Unit'),
    Step('আউজুবিল্লাহ ', 'Purchase List','Order List','VAT List','Product Unit'),
    Step('বিসমিল্লাহ ', 'Purchase List','Order List','VAT List','Product Unit'),
    Step('রুকুর দোয়া ', 'Purchase List','Order List','VAT List','Product Unit'),
    Step('সিজদার দোয়া ', 'Purchase List','Order List','VAT List','Product Unit'),
    Step('২ সিজদার মধ্যবর্তী দোয়া ', 'Purchase List','Order List','VAT List','Product Unit'),
    Step('তাশাহুদ', 'Purchase List','Order List','VAT List','Product Unit'),
    Step('দরুদ', 'Purchase List','Order List','VAT List','Product Unit'),
    //Step('দু’আই মাসুরাহ', 'Purchase List','Order List','VAT List','Product Unit'),
   // Step('সালাম', 'Purchase List','Order List','VAT List','Product Unit'),
   // Step('দু’আই কুনুত', 'Purchase List','Order List','VAT List','Product Unit'),
    //Step('সালাত শেষে দোয়া', 'Purchase List','Order List','VAT List','Product Unit'),
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
      padding: const EdgeInsets.all(8.0),
      child: ExpansionPanelList(
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
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${step.subHeading}',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '${step.subHeading1}',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '${step.subHeading2}',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '${step.subHeading3}',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '${step.subHeading}',
                    style: TextStyle(
                      fontSize: 15,
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