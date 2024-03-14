import 'package:e_commerce_app/Navigation%20Bar/top_categories.dart';
import 'package:flutter/material.dart';

class FeatureCategories extends StatefulWidget {
  const FeatureCategories({super.key});

  @override
  State<FeatureCategories> createState() => _FeatureCategoriesState();
}

class _FeatureCategoriesState extends State<FeatureCategories> {
  final List<MK> cate = [
    MK("HP", "assets/images/hp laptop.png"),
    MK("LENOVO", "assets/images/lenovo laptop.png"),
    MK("Acer", "assets/images/acer laptop.png"),
    MK("keyboard ", "assets/images/keyboard.png"),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: cate.length,
                itemBuilder: (context, count) {
                  return Padding(
                    padding:  EdgeInsets.all(10),

                    child: GestureDetector(
                      onTap: (){
                        //Navigator.push(context, MaterialPageRoute(builder:  (context) => product(),));
                      },
                      child: Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,borderRadius: BorderRadius.all(Radius.circular(17)),

                          // Set the shape to circular
                          border: Border.all(
                            color: Colors.black, // Set the border color
                            width: 0.25, // Set the border width
                          ),
                          // Column(
                          //  children: [
                          //    Image.asset(cate[count].image.toString(),),
                          //    SizedBox(height: 20,),
                          //    Text(cate[count].title.toString()),
                          //  ],
                          //           ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Image.asset(cate[count].image.toString(),width: 40,height: 40,),

                              Text(cate[count].title.toString()),
                            ],

                          ),
                        ),
                      ),
                    ),
                  );
                }
            )),
      ],
    ),
    );
  }
}

class MK {
  String title;
  String image;

  MK(this.title, this.image);
}


