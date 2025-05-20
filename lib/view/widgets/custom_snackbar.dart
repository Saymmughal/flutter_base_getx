import 'package:flutter/material.dart';
import 'package:flutter_base_getx/utils/colors.dart';
import 'package:flutter_base_getx/view/widgets/extention/string_extension.dart';
import 'package:get/get.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showToast(
  String message,{
  bool isError = true
}) {
  return ScaffoldMessenger.of(
    Get.context!,
  ).showSnackBar(_customSnackBar(Get.context!, message, isError));
}

SnackBar _customSnackBar(BuildContext context, String message, bool isError) {
  return SnackBar(
    duration: const Duration(seconds: 3),
    dismissDirection: DismissDirection.up,
    elevation: 10,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    padding: EdgeInsets.zero,
    content: Container(
      decoration: BoxDecoration(
        color: isError ? greenPrimary : redSecondary,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: greyLight,
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(-4, 4),
          ),
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: message.to14W500Text(
            textAlign: TextAlign.start,
            color: whitePrimary,
          ),
        ),
      ),
    ),
  );
}
