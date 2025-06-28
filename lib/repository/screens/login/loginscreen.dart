import 'package:flutter/material.dart';
import 'package:skp_blinkit/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:skp_blinkit/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width for responsiveness (optional)
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // scroll on small screens
          child: Padding(
            padding: const EdgeInsets.all(16.0), // spacing from edges
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  UiHelper.CustomeImage(img: "Blinkit Onboarding Screen.png"),
                  SizedBox(height: 10),
                  UiHelper.CustomeImage(img: "image 10.png"),
                  SizedBox(height: 10),
                  UiHelper.CustomText(
                    text: "India’s last minute app",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 20,
                    fontfamily: "bold",
                  ),
                  SizedBox(height: 20),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      height: 200,
                      width: screenWidth * 0.9, // 90% of screen width
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0XFFFFFFFF),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          UiHelper.CustomText(
                            text: "Sandeep",
                            color: Color(0XFF000000),
                            fontweight: FontWeight.w500,
                            fontsize: 14,
                          ),
                          SizedBox(height: 5),
                          UiHelper.CustomText(
                            text: "85030XXXXX",
                            color: Color(0XFF9C9C9C),
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                            fontfamily: "bold",
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 48,
                            width: 295,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFFE23744),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  UiHelper.CustomText(
                                    text: "Login  with",
                                    color: Color(0XFFFFFFFF),
                                    fontweight: FontWeight.bold,
                                    fontsize: 14,
                                    fontfamily: "bold",
                                  ),
                                  SizedBox(width: 5,),
                                  UiHelper.CustomeImage(img: "image 9.png")
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 8,),
                          UiHelper.CustomText(text: "Access your saved addresses from Zomato automatically!", color: Color(0XFF9C9C9C), fontweight: FontWeight.normal, fontsize: 10),
                          SizedBox(height: 25,),
                          UiHelper.CustomText(text: "or login with phone number", color: Color(0XFF269237), fontweight: FontWeight.normal, fontsize: 14),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Bottom spacing
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
