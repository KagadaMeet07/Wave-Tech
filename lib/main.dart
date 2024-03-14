//import 'package:e_commerce_app/Navigation%20Bar/ProfilePage.dart';
import 'package:e_commerce_app/Screens/LoginPage.dart';
//import 'package:e_commerce_app/SingupPage.dart';
//import 'package:e_commerce_app/SplashScreenPage.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/main.dart';

import 'Home_Page.dart';
import 'Navigation Bar/Feature_product.dart';
import 'Navigation Bar/Search_Bar.dart';
import 'Screens/SingupPage.dart';
import 'Screens/SplashScreenPage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan
      ),
      home: SplashScreenPage(),

    );
  }
}
class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//        // title: Text('WaveTech'),
//      //   backgroundColor: Colors.white38,
//       ),
//     // body: Drawer(
//     //   width: w*0.01,
//     //
//     // ),
//     //   body: ElevatedButton(
//     //     onPressed: (){
//     //       Navigator.pushNamed(context, '/signup');
//     //
//     //     },child: Text("Sing Up Here !!"),
//     //   ),
//     // );      // title: Text("HomePage"),
//     );
//   }
// }




