import 'package:flutter/material.dart';
import 'package:sosko_screen/style/k_colors.dart';
import 'package:sosko_screen/constant/asset_path.dart';
import 'package:sosko_screen/style/k_text_style.dart';

import 'component/products_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  bool isSelected = false;
  int _index = 0;
  int ind1 = -1;
  List iconList = [
    {
      "icon": Icons.home,
      "isSelected": false,
    },
    {
      "icon": Icons.favorite,
      "isSelected": false,
    },
    {
      "icon": Icons.search,
      "isSelected": false,
    },
    {
      "icon": Icons.person,
      "isSelected": false,
    },
  ];
  List tabbarList = [
    {
      "description": "All",
    },
    {
      "description": "Lifestyle",
    },
    {
      "description": "Sports",
    },
    {
      "description": "Clothing",
    },
    {
      "description": "Babyproducts",
    },
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: kcolor.white,
        appBar: AppBar(
          backgroundColor: kcolor.white,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              AssetPath.menu,
            ),
          ),
          title: Container(
            alignment: Alignment.center,
            //margin: EdgeInsets.only(right: 20),
            child: Text('SOSKO', style: KTextStyle.headline1),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(AssetPath.notifi),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 800,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                  height: MediaQuery.of(context).size.height * .25,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kcolor.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 50, top: 5, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '-skincare products',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: kcolor.violate,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '50% off on \nevery Skincare \nProdutcs',
                              style: TextStyle(
                                  color: kcolor.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: kcolor.green,
                                  onPrimary: kcolor.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Shop Now',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          AssetPath.boximg,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(tabbarList.length, (int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              ind1 = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            //padding: const EdgeInsets.only(left: 3),
                            child: Container(
                                height: 28,
                                width: tabbarList[index]["description"] == "All"
                                    ? 53
                                    : tabbarList[index]["description"] ==
                                            "Sports"
                                        ? 76
                                        : tabbarList[index]["description"] ==
                                                "Babyproducts"
                                            ? 93
                                            : 87,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: ind1 == index
                                        ? kcolor.green
                                        : Color(0xFFF6F7FB)),
                                child: Center(
                                  child: Text(
                                    tabbarList[index]["description"],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: ind1 == index
                                            ? kcolor.white
                                            : Color(0xFF6D6D78)
                                                .withOpacity(.6)),
                                  ),
                                )),
                          ),
                        );
                      })),
                ),
              ),
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Special For You',
                        style: TextStyle(
                            color: kcolor.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 0,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text('See all',
                              style:
                                  TextStyle(color: kcolor.green, fontSize: 15)))
                    ],
                  ),
                ),
                ProductsPage(),
                // Container(
                //   margin: EdgeInsets.only(
                //     //top: 10,
                //     left: 10,
                //     right: 10,
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Special For You',
                //         style: TextStyle(
                //             color: kcolor.black,
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold),
                //       ),
                //       SizedBox(
                //         width: 0,
                //       ),
                //       TextButton(
                //           onPressed: () {},
                //           child: Text('See all',
                //               style:
                //                   TextStyle(color: kcolor.green, fontSize: 15)))
                //     ],
                //   ),
                // ),
                // ProductsPage(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kcolor.green,
          onPressed: () {},
          child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Image(
                image: AssetImage(
                  AssetPath.flow,
                ),
                fit: BoxFit.cover,
              )),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
              topLeft: Radius.circular(35),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 12,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: List.generate(
                iconList.length,
                (index) => Container(
                      // padding: EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = index;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 89,
                            ),
                            Icon(
                              iconList[index]["icon"],
                              size: 28,
                              color:
                                  index == _index ? kcolor.green : Colors.grey,
                            ),
                            Container(
                              height: 10,
                              width: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8)),
                                color: index == _index
                                    ? kcolor.green
                                    : Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
          ),
        ));
  }
}