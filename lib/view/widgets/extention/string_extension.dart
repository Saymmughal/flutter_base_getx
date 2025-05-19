import 'package:flutter/material.dart';
import 'package:flutter_base_getx/utils/style.dart';
import 'package:get/get.dart';

extension StringExtension on String {
  Widget toText({
    Color? color,
    double? fontSize,
    int? maxLine,
    TextAlign? textAlign,
    TextOverflow? overflow,
    FontWeight? fontWeight,
    Color? backgroundColor,
    double? lineHeight,
    bool? isBold,
    bool? isMedium,
  }) => Text(
    this,
    maxLines: maxLine ?? maxLine,
    textAlign: textAlign ?? textAlign,
    style: TextStyle(
      height: lineHeight,
      backgroundColor: backgroundColor ?? backgroundColor,
      color: color ?? Colors.black,
      fontSize: (fontSize ?? 12).toInt().fsp(),
      fontFamily: poppins,
      fontStyle: FontStyle.normal,
      overflow: overflow ?? TextOverflow.ellipsis,
      fontWeight:
          fontWeight ??
          (isBold == true
              ? FontWeight.bold
              : (isMedium == true ? FontWeight.w500 : FontWeight.w400)),
    ),
  );
}

extension FontSizeExtension on num {
  static const double _figmaScreenWidth = 430; // Hardcoded Figma screen width

  double fsp() {
    // Access the current screen width using MediaQuery
    final screenWidth = MediaQuery.of(Get.context!).size.width;

    // Calculate the scaled font size
    return (this / _figmaScreenWidth) * screenWidth;
  }
}