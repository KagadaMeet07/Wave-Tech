import 'dart:async';

import 'package:e_commerce_app/Screens/LoginPage.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';
class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => LoginPage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: Container(
              height: h*0.1,
              width: w*0.6,
              child: Image.asset('assets/images/Wavetech logo.png')

          ),


        ),
      ),

    );
  }
}
