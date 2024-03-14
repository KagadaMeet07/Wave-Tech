import 'package:flutter/material.dart';

class FeatureProduct extends StatefulWidget {
  const FeatureProduct({super.key});

  @override
  State<FeatureProduct> createState() => _FeatureProductState();
}

class _FeatureProductState extends State<FeatureProduct> {
  final List<Product> products = [
    Product("HP", "50000", "assets/images/hp laptop.png"),
    Product("LENOVO", "45000", "assets/images/lenovo laptop.png"),
    Product("Acer", "30500", "assets/images/acer laptop.png"),
    Product("keyboard ", "2000", "assets/images/keyboard.png"),
  ];

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(

        body:
        Container(
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0, // Spacing between columns
              mainAxisSpacing: 8.0,
            ),
            itemBuilder: (context, index) {
              //return ProductItem(getProduct: products.toList(),index: index,);
              return Card(
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(products[index].image.toString(),
                      height: h*0.1,
                      width: double.infinity,
                      fit: BoxFit.cover,),
                    Padding(padding: EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(products[index].name.toString(),
                            style: TextStyle(
                                fontSize: 16,fontWeight: FontWeight.bold),),
                          SizedBox(height: 4,),
                          Text(products[index].prize.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.red),)
                        ],
                      ),
                    )
                  ],

                ),
              );
            },
          ),
        ));
  }
}

// class ProductItem extends StatefulWidget {
//
//   List<Product>getProduct;
//   var index;
//
//   ProductItem({super.key, required this.getProduct, required this.index});
//
//   @override
//   State<ProductItem> createState() => _ProductItemState();
// }
//
// class _ProductItemState extends State<ProductItem> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       child: GestureDetector(
//         onTap: () {
//           // Navigator.push(context,
//           //     MaterialPageRoute(
//           //     builder: (context)
//           // =>
//           //     product(key: "",)
//           // ,
//           //Navigator.push(context, MaterialPageRoute(builder: (context) => home_page()));
//         },
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(widget.getProduct[widget.index].image.toString(),
//               height: 100,
//               width: double.infinity,
//               fit: BoxFit.cover,),
//             Padding(padding: EdgeInsets.all(5.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(widget.getProduct[widget.index].name.toString(),
//                     style: TextStyle(
//                         fontSize: 16, fontWeight: FontWeight.bold),),
//                   SizedBox(height: 4,),
//                   Text(widget.getProduct[widget.index].prize.toString(),
//                     style: TextStyle(fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                         color: Colors.red),)
//                 ],
//               ),
//             )
//           ],
//
//         ),
//       ),
//     );
//   }
// }


class Product {
  String image;
  String name;
  String prize;

  Product(this.name, this.prize, this.image);
}


