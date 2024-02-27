import 'package:e_commerce_app/LoginPage.dart';
import 'package:e_commerce_app/SingupPage.dart';
import 'package:e_commerce_app/SplashScreenPage.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/main.dart';
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
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
       // title: Text('WaveTech'),
        backgroundColor: Colors.white38,
      ),
    body: Drawer(
      width: w*0.01,

    ),
    //   body: ElevatedButton(
    //     onPressed: (){
    //       Navigator.pushNamed(context, '/signup');
    //
    //     },child: Text("Sing Up Here !!"),
    //   ),
    // );      // title: Text("HomePage"),
    );
  }
}




