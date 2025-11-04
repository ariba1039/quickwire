import 'package:flutter/material.dart';
import 'package:quickwire/domain/constants/app_colors.dart';

class UiHelper {
  static customImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }

  static customText({
    required String text,
    required double fontSize,
    required FontWeight fontWeight,
    String? fontFamily,
    Color? color,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily ?? "regular",
        color: color,
        // (Theme.of(context).brightness == Brightness.dark
        //     ? AppColors.textLightmode
        //     : AppColors.textDarkmode),
      ),
    );
  }

  static customButton({
    required String text,
    required VoidCallback onPressed,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? width,
    double? height,
  }) {
    return SizedBox(
      width: width ?? 357,
      height: height ?? 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonlightmode,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(30),
          // ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize ?? 16,
            fontWeight: fontWeight ?? FontWeight.normal,
            color: color ?? AppColors.scaffoldLight,
          ),
        ),
      ),
    );
  }

  static customTextField({
    required TextEditingController controller,
    required String hintText,
    TextInputType? textinputtype,
    bool obscureText = false,
    required BuildContext context,
  }) {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.textfielddarkmode
            : AppColors.textfieldlightmode,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: TextField(
          controller: controller,
          keyboardType: textinputtype,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.hintdarkmode
                  : AppColors.hintlightmode,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: "bold",
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          ),
        ),
      ),
    );
  }
}
