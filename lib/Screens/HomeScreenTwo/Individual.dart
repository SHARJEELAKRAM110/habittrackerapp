import 'package:flutter/material.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';

class Individual extends StatefulWidget {
  const Individual({super.key});

  @override
  State<Individual> createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          CustomText(text: "hdkfnf",fontSize: 22,fontWeight: FontWeight.w600,)
        ],
      ),

    );
  }
}
