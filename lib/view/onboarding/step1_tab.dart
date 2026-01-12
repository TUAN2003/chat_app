import 'package:flutter/material.dart';

class Step1Tab extends StatelessWidget {
  const Step1Tab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Image.asset('assets/images/onboarding/step1.png')],
      ),
    );
  }
}
