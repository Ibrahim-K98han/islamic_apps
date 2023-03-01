import 'package:flutter/material.dart';

class AzanWidgets extends StatelessWidget {
  const AzanWidgets({
    Key? key, required this.azanArabic, required this.azanBangla, required this.azanUccharon,
  }) : super(key: key);

  final String azanArabic;
  final String azanBangla;
  final String azanUccharon;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(azanArabic,style: TextStyle(fontSize: 18),),
        SizedBox(height: 10,),
        Text(azanBangla,style: TextStyle(fontSize: 16),),
        SizedBox(height: 10,),
        Text(azanUccharon,style: TextStyle(fontSize: 16),),
        SizedBox(height: 10,),
      ],
    );
  }
}