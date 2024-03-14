import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/Navigation%20Bar/top_categories.dart';
import 'package:flutter/material.dart';

import 'Navigation Bar/Bottom_Navigation_bar.dart';
import 'Navigation Bar/Feature_product.dart';
import 'Navigation Bar/Search_Bar.dart';
import 'Navigation Bar/feature_categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Sachen> infoBank = [

    Sachen(
      "Top Categories",
      "assets/images/top_categories.png",

    ),

    Sachen(
      "Brand",
      "assets/images/brand.png",
    ),
    // Sachen(
    //   "Top Seller",
    //   "assets/image/topseller.png",
    // ),
    // Sachen(
    //   "Today Deal",
    //   "assets/image/todaydeal.png",
    // ),
    // Sachen(
    //   "Flash Deal",
    //   "assets/image/flash.png",
    // ),
  ];

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(

      appBar: AppBar(
        // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            child: TextField(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchBarScreen(),
                    ));
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search...',
                  hintStyle: TextStyle(),
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
            ),
          )),
      backgroundColor: Colors.white,


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  Container(
                    height: 200,
                    width: double.infinity,
                    child: BottomNavigation(),
                  ),
                  SizedBox(height: 10),

                  Container(
                    height: 130,
                    width: double.infinity,
                    child: CarouselSlider(
                        options: CarouselOptions(
                          onPageChanged: (index, reason) {},
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.8,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                        ),
                        items: [
                          buildCarouselItem('assets/images/acer laptop.png'),
                          buildCarouselItem('assets/images/acer laptop.png'),
                          buildCarouselItem('assets/images/acer laptop.png'),
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < infoBank.length; i++)
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: infoBank == i ? Colors.blue : Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                      offset: Offset(2, 3))
                                ]),
                          ),
                        )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 210,
                     // height: h*0.3,
                     // width: w*0.7,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: infoBank.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
        
        
                              if(infoBank[index].title=="Top Categories"){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => TopCategories(),));
        
                              }
        
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                height: 60,
                                width: 60,
                                child: Column(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(29),
                                        color: Colors.grey),
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        child: Image.asset(
                                          infoBank[index].image.toString(),
                                          height: 60,
                                          width: 60,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(infoBank[index].title.toString())
                                ]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                    Text("Featured Categories",style: TextStyle(fontSize: 15.00,fontWeight: FontWeight.w400),)
                  ],),
                  SizedBox(
                    height: 10,
                  ),
                  Container(

                    height: 200,
                    width: double.infinity,
                    child: FeatureCategories(),
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                    Text("Featured Product",style: TextStyle(fontSize: 15.00,fontWeight: FontWeight.w400),)
                  ],),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: FeatureProduct(),
                  ),




                ],
              ),
            ),
          ),
        ),

      ),
    );
  }

  Widget buildCarouselItem(String imagePath) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
      ),

    );
  }
}

class Sachen {
  String title;
  String image;

  Sachen(this.title, this.image);
}


