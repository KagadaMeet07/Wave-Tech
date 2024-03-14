import 'package:flutter/material.dart';
class TopCategories extends StatefulWidget {
  const TopCategories({super.key});

  @override
  State<TopCategories> createState() => _TopCategoriesState();
}

class _TopCategoriesState extends State<TopCategories> {
  final List<Meet> Categories = [
    Meet("HP", "assets/images/hp laptop.png"),
   // Meet("DELL", "assets/images/dell_laptop.jpg"),
    Meet("LENOVO", "assets/images/lenovo laptop.png"),
    Meet("Acer", "assets/images/acer laptop.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text("Categories")),
        ),
        body: ListView.builder(
          itemCount: Categories.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xffcfcccc)),
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 50,
                          child: Image.asset(
                            Categories[index].image.toString(),
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0,top: 10),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  Categories[index].title.toString(),
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,


                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("View Sub categories",
                                    style: TextStyle(decoration: TextDecoration.underline,
                                        color: Colors.grey,
                                        fontSize: 11

                                    )),
                                Text(" | ",style: TextStyle(
                                  color: Colors.grey,
                                )),
                                Text("View Products",style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.grey,
                                    fontSize: 11

                                ))
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}

class Meet {
  String title;
  String image;

  Meet(this.title, this.image);
}


