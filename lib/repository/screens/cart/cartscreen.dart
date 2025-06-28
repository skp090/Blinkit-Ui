import 'package:flutter/material.dart';
import 'package:skp_blinkit/repository/widgets/uihelper.dart';

// ignore: must_be_immutable
class CartScreen extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();

  CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 23),
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
                  child: Icon(Icons.person, color: Colors.black, size: 25),
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
          UiHelper.CustomeImage(img: "shopping-cart (1) 1.png"),
          SizedBox(height: 10),

          UiHelper.CustomText(
            text: "Reordering will be easy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 16,
            fontfamily: "bold",
          ),

          UiHelper.CustomText(
            text:
                "items you order will show up here so you can buy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          UiHelper.CustomText(
            text:
            "them again easily.",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          SizedBox(height: 30,),
          Row(children: [
            SizedBox(width: 20,),
            UiHelper.CustomText(
              text:
              "Bestsellers.",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 16,
            ),
          ],),
          SizedBox(height: 10,),
          Row(children: [
            SizedBox(width: 20,),
            Stack(
              children: [
                UiHelper.CustomeImage(img: "image 45.png"),
                Padding(padding: EdgeInsets.only(top:95, left: 65),
                child: UiHelper.CustomButton((){}),
                ),


                  //UiHelper.CustomText(text: "Amul Taaza Toned",   color: Color(0XFF000000), fontweight: FontWeight.normal, fontsize: 8),

              ],
            ),
            SizedBox(width: 15,),
            Stack(
              children: [
                UiHelper.CustomeImage(img: "image 46.png"),
                Padding(padding: EdgeInsets.only(top:95, left: 65),
                  child: UiHelper.CustomButton((){}),
                ),
              ],
            ),
            SizedBox(width: 15,),
            Stack(
              children: [
                UiHelper.CustomeImage(img: "patato.png"),
                Padding(padding: EdgeInsets.only(top:95, left: 65),
                  child: UiHelper.CustomButton((){}),
                ),
              ],
            )
          ],)

        ],
      ),
    );
  }
}
