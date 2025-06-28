import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController searchcontroller = TextEditingController();

  var grocearykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "cold.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "biscuit.png", "text": "Biscuits & \nBakery"},
  ];
  var secondgro = [
    {"img": "image 21.png", "text": "Dry Fruits & \nCereals"},
    {"img": "image 22.png", "text": "Kitchen & \nAppliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
  ];
  var thirdsnack = [
    {"img": "image 31.png", "text": "Chips & \nNamkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces & \nSpreads"},
    {"img": "image 35.png", "text": "Beauty & \nCosmetics "},
  ];
  var fourthhouse = [
    {"img": "image 36.png"},
    {"img": "image 37.png"},
    {"img": "image 38.png"},
    {"img": "image 39.png"},
    {"img": "image 40.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 0),
                    Stack(
                      children: [
                        Container(
                          height: 170,
                          width: double.infinity,
                          color: Color(0XFFF7CB45),
                          child: Column(
                            children: [
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  SizedBox(width: 25),

                                  UiHelper.CustomText(
                                    text: "Blinkit in",
                                    color: Color(0XFF000000),
                                    fontweight: FontWeight.bold,
                                    fontsize: 15,
                                    fontfamily: "bold",
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 18),

                                  UiHelper.CustomText(
                                    text: " 16 minutes",
                                    color: Color(0XFF000000),
                                    fontweight: FontWeight.bold,
                                    fontsize: 20,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 23),

                                  UiHelper.CustomText(
                                    text: " HOME ",
                                    color: Color(0XFF000000),
                                    fontweight: FontWeight.bold,
                                    fontsize: 14,
                                  ),
                                  UiHelper.CustomText(
                                    text: " - Sandeep, Pali (Raj)",
                                    color: Color(0XFF000000),
                                    fontweight: FontWeight.bold,
                                    fontsize: 14,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 20,
                          bottom: 100,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: UiHelper.CustomTextField(
                            controller: searchcontroller,
                            text: '',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Grocery & Kitchen",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: 78,
                                    width: 71,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0XFFD9EBEB),
                                    ),
                                    child: UiHelper.CustomeImage(
                                      img:
                                          grocearykitchen[index]["img"]
                                              .toString(),
                                    ),
                                  ),
                                ),
                                UiHelper.CustomText(
                                  text:
                                      grocearykitchen[index]["text"].toString(),
                                  color: Colors.black,
                                  fontweight: FontWeight.normal,
                                  fontsize: 10,
                                ),
                              ],
                            );
                          },
                          itemCount: grocearykitchen.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: 78,
                                    width: 71,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0XFFD9EBEB),
                                    ),
                                    child: UiHelper.CustomeImage(
                                      img: secondgro[index]["img"].toString(),
                                    ),
                                  ),
                                ),
                                UiHelper.CustomText(
                                  text: secondgro[index]["text"].toString(),
                                  color: Colors.black,
                                  fontweight: FontWeight.normal,
                                  fontsize: 10,
                                ),
                              ],
                            );
                          },
                          itemCount: secondgro.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Snacks & Drinks",
                          fontfamily: "bold",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: 78,
                                    width: 71,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0XFFD9EBEB),
                                    ),
                                    child: UiHelper.CustomeImage(
                                      img: thirdsnack[index]["img"].toString(),
                                    ),
                                  ),
                                ),
                                UiHelper.CustomText(
                                  text: thirdsnack[index]["text"].toString(),
                                  color: Colors.black,
                                  fontweight: FontWeight.normal,
                                  fontsize: 10,
                                ),
                              ],
                            );
                          },
                          itemCount: thirdsnack.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Household Essentials",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 88,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 78,
                                width: 71,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0XFFD9EBEB),
                                ),
                                child: UiHelper.CustomeImage(
                                  img: fourthhouse[index]["img"].toString(),
                                ),
                              ),
                            );
                          },
                          itemCount: fourthhouse.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
