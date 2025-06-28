import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skp_blinkit/repository/screens/login/loginscreen.dart';
import 'package:skp_blinkit/repository/widgets/uihelper.dart';

import '../../../domain/constant/appcolor.dart';

class SplashScreen extends StatefulWidget {

  @override
  State <SplashScreen> createState ()=> _SplashScreenState();
}

class _SplashScreenState  extends State <SplashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomeImage(img: 'image 1.png'),

          ],
        ),
      )
    );
  }
}