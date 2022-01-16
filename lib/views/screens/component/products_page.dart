import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({ Key? key }) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List productList = [
    {
      "image": "assets/images/product1.png",
      "description": "PS5 JoyStik",
      "type": "On Sale",
      "price": "\$20"
    },
    {
      "image": "assets/images/bitmap.png",
      "description": "LogiStik Headphone",
      "type": "Technology",
      "price": "\$30"
    },
    {
      "image": "assets/images/bitmap.png",
      "description": "LogiStik Headphone",
      "type": "Clothing",
      "price": "\$40"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Container(
                child: ListView(
     scrollDirection: Axis.horizontal,
     shrinkWrap: true,
     children: [
       Row(
           children:
               List.generate(productList.length, (int index) {
         return Container(
           margin:  EdgeInsets.only(top: 10, left: 20),
           child: Column(
             children: [
               Container(
                   height: 250,
                   width: 140,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5),
                     // color: Colors.grey
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                           height: 140,
                           width: 140,
                           decoration: BoxDecoration(
                               color: Color(0xFFF6F7FB),
                               borderRadius:
                                   BorderRadius.circular(25)),
                           child: Image.asset(
                             "${productList[index]["image"]}",
                             // fit: BoxFit.cover,
                           )),
                        SizedBox(
                         height: 5,
                       ),
                       Text(
                         productList[index]["description"],
                         style:  TextStyle(
                             fontWeight: FontWeight.w600,
                             fontSize: 14,
                             color: Color(0xFF172239)),
                       ),
                        SizedBox(
                         height: 5,
                       ),
                       Row(
                         children: [
                           Container(
                             height: 20,
                             width: productList[index]["type"] ==
                                     "On Sale"
                                 ? 50
                                 : productList[index]["type"] ==
                                         "Technology"
                                     ? 70
                                     : 70,
                             decoration: BoxDecoration(
                                 borderRadius:
                                     BorderRadius.circular(25),
                                 color: productList[index]
                                             ["type"] ==
                                         "On Sale"
                                     ? Colors.red.withOpacity(0.1)
                                     : productList[index]
                                                 ["type"] ==
                                             "Technology"
                                         ? Color(0xFF8000FF)
                                             .withOpacity(0.1)
                                         : Color(0xFF00FFB2)
                                             .withOpacity(0.1)),
                             child: Center(
                                 child: Text(
                                     productList[index]["type"],
                                     style: TextStyle(
                                         color: productList[index]
                                                     ["type"] ==
                                                 "On Sale"
                                             ? Colors.red
                                             : productList[index][
                                                         "type"] ==
                                                     "Technology"
                                                 ?  Color(
                                                     0xFF8000FF)
                                                 :  Color(
                                                     0xFF00FFB2),
                                         fontSize: 10,
                                         fontWeight:
                                             FontWeight.w600))),
                           ),
                            SizedBox(
                             width: 15,
                           ),
                           Container(
                             child: productList[index]["type"] ==
                                     "On Sale"
                                 ?  Text(
                                     "\$25",
                                     style: TextStyle(
                                         color: Color(0xFFB8B8B8),
                                         fontSize: 12,
                                         fontWeight:
                                             FontWeight.w600,
                                         decoration:
                                         TextDecoration.lineThrough),
                                   )
                                 : null,
                           ),
                            SizedBox(
                             width: 3,
                           ),
                           Text(
                             productList[index]["price"],
                             style:  TextStyle(
                                 color: Color(0xFF172239),
                                 fontWeight: FontWeight.w700,
                                 fontSize: 15),
                           )
                         ],
                       )
                     ],
                   ),
                   ),

                        
                    
             ],
           ),
         );
       })),
     ],
   ),
      ),
      
    );
  }
}