import 'package:flutter/material.dart';
import 'package:skp_blinkit/repository/widgets/uihelper.dart';

class PrintScreen extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
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
          SizedBox(height: 30),
          UiHelper.CustomText(
            text: "Print Store",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 32,
          ),
          UiHelper.CustomText(
            text: "Blinkit ensures secure prints at every stage",
            color: Color(0XFF9C9C9C),
            fontweight: FontWeight.normal,
            fontsize: 14,
          ),
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 180,
                width: 361,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),

                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Documents",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomeImage(img: "icon.png"),
                        SizedBox(width: 7),

                        UiHelper.CustomText(
                          text: "Price start at rs 3/page",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 15,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomeImage(img: "icon.png"),
                        SizedBox(width: 7),

                        UiHelper.CustomText(
                          text: "Paper quality : 70 GSM ",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 15,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomeImage(img: "icon.png"),
                        SizedBox(width: 7),

                        UiHelper.CustomText(
                          text: "Single side print",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 15,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),

                    Row(
                      children: [
                        SizedBox(width: 29),
                        SizedBox(
                          height: 40,
                          width: 125,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF27AF34),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Text(
                              "Upload files",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(child: UiHelper.CustomeImage(img: "image 62.png"),
              right: 20,
              top: 50,),
            ],
          ),
        ],
      ),
    );
  }
}
