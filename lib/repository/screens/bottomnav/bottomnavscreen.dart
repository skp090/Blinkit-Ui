import 'package:flutter/material.dart';
import 'package:skp_blinkit/repository/screens/cart/cartscreen.dart';
import 'package:skp_blinkit/repository/screens/category/categoryscreen.dart';
import 'package:skp_blinkit/repository/screens/home/homescreen.dart';
import 'package:skp_blinkit/repository/screens/print/printscreen.dart';
import 'package:skp_blinkit/repository/widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: UiHelper.CustomeImage(img: "home 1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomeImage(img: "shopping-bag 1.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomeImage(img: "category 1.png"),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomeImage(img: "printer 1.png"),
            label: "Print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
