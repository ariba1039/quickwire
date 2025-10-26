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
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? AppColors.textLightmode
                : AppColors.textDarkmode),
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
}
