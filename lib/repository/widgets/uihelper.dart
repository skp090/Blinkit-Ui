import 'package:flutter/material.dart';

class UiHelper {
  static Widget CustomeImage({required String img}) {
    return Image.asset(
      "assets/images/$img",
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: Colors.grey[300],
          child: Icon(Icons.broken_image, color: Colors.grey, size: 40),
        );
      },
    );
  }

  static Widget CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
        color: color,
      ),
    );
  }

  static Widget CustomTextField({
    required TextEditingController controller,
    required String text,
  }) {
    return Container(
      height: 40,
      width: 346,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color(0XFFC5C5C5)),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "search 'ice-cream'",
          prefixIcon: Image.asset(
            "assets/images/search-interface-symbol 1.png",
          ),
          suffixIcon: Image.asset("assets/images/mic 1.png"),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static Widget CustomButton(VoidCallback callback) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 18,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0XFF27AF34)),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            "Add",
            style: TextStyle(fontSize: 8, color: Color(0XFF27AF34)),
          ),
        ),
      ),
    );
  }
}
