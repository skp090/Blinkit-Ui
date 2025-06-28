import 'package:flutter/material.dart';
import '../../widgets/uihelper.dart' show UiHelper;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchcontroller = TextEditingController();

  var data = [
    {"img": "image 50.png", "text": "Lights, Diyas \n& Candles"},
    {"img": "image 51.png", "text": "Diwali \nGifts"},
    {"img": "image 52.png", "text": "Appliances \n& Gadgets"},
    {"img": "image 53.png", "text": "Home \n& Living"},
  ];

  var category = [
    {"img": "image 54.png", "text": "Golden Glass \n Wooden Lid Candle"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun \nBy Bikano"},
    {"img": "image 63.png", "text": "Bikaji \nBhujia"},
  ];

  var grocearykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "cold.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "biscuit.png", "text": "Biscuits & \nBakery"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            children: [

              // Stack: Header
              SizedBox(height: 0),
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Color(0XFFEC0505),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Row(
                          children: [
                            SizedBox(width: 25),
                            UiHelper.CustomText(
                              text: "Blinkit in",
                              color: Colors.white,
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
                              color: Colors.white,
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
                              color: Colors.white,
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                            ),
                            UiHelper.CustomText(
                              text: " - Sandeep, Pali (Raj)",
                              color: Colors.white,
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
                      backgroundColor: Colors.black,
                      child: Icon(Icons.person, color: Colors.white, size: 25),
                    ),
                  ),
                  Positioned(
                    bottom: 18,
                    left: 20,
                    right: 20,
                    child: UiHelper.CustomTextField(
                      controller: searchcontroller,
                      text: '',
                    ),
                  ),
                ],
              ),

              Container(height: 1, width: double.infinity, color: Colors.white),

              // Mega Diwali Sale Section
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0XFFEC0505),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UiHelper.CustomeImage(img: "image 55.png"),
                        UiHelper.CustomeImage(img: "image 55.png"),
                        UiHelper.CustomText(
                          text: "Mega Diwali Sale",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                        ),
                        UiHelper.CustomeImage(img: "image 55.png"),
                        UiHelper.CustomeImage(img: "image 55.png"),
                      ],
                    ),
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        itemCount: data.length,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(10),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            height: 108,
                            width: 86,
                            decoration: BoxDecoration(
                              color: Color(0XFFEAD3D3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.CustomText(
                                  text: data[index]["text"]!,
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontsize: 10,
                                ),
                                UiHelper.CustomeImage(
                                  img: data[index]["img"]!,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // Category Section
              SizedBox(height: 20),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 110,
                          width: 105,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: UiHelper.CustomeImage(
                            img: category[index]["img"]!,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: UiHelper.CustomText(
                            text: category[index]["text"]!,
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 8,
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: Row(
                            children: [
                              UiHelper.CustomeImage(img: "timer 4.png"),
                              UiHelper.CustomText(
                                text: "16 MINS",
                                color: Color(0XFF9C9C9C),
                                fontweight: FontWeight.normal,
                                fontsize: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 1, right: 55),
                          child: Row(
                            children: [
                              UiHelper.CustomeImage(img: "image 50(1).png"),
                              UiHelper.CustomText(
                                text: "79",
                                color: Color(0XFF000000),
                                fontweight: FontWeight.bold,
                                fontsize: 15,
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),

              // Grocery Section
              SizedBox(height: 0),
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
              SizedBox(height: 20),
              SizedBox(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListView.builder(
                    itemCount: grocearykitchen.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB),
                            ),
                            child: UiHelper.CustomeImage(
                              img: grocearykitchen[index]["img"]!,
                            ),
                          ),
                          UiHelper.CustomText(
                            text: grocearykitchen[index]["text"]!,
                            color: Colors.black,
                            fontweight: FontWeight.normal,
                            fontsize: 10,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
