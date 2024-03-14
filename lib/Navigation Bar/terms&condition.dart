import 'package:flutter/material.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
            "Look for Terms & Conditions "
                "User Agreement within the Wavetech app itself. "
              "If you can't find it there, check the Wavetech website for their legal information page."
        ),
      ),
    );
  }
}
