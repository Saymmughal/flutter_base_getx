// LOADING DIALOG
import 'package:flutter/material.dart';
import 'package:flutter_base_getx/utils/colors.dart';
import 'package:flutter_base_getx/view/widgets/extention/int_extension.dart';
import 'package:get/get.dart';

loaderDialog() {
  return Get.dialog(
    AlertDialog(
        insetPadding: const EdgeInsets.all(100),
        contentPadding: const EdgeInsets.all(25),
        clipBehavior: Clip.none,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        content: SizedBox(
          height: 80.h,
          width: 80.w,
          child: const Center(
            child: CircularProgressIndicator(color: azurePrimary),
          ),
        ),
      ),
    barrierDismissible: false,
  );
}
