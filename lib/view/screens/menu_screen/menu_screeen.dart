import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_getx/utils/colors.dart';
import 'package:flutter_base_getx/view/widgets/extention/string_extension.dart';
import 'package:flutter_base_getx/view/widgets/extention/widget_extension.dart';
import 'package:flutter_base_getx/view/widgets/loading_dialog.dart';
import 'package:get/get.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: whiteStatusBar(),
      child: Scaffold(
        backgroundColor: greenPrimary,
        body: Container(child: 'Menu Screen'.toText()).center.onPress(() {
          loaderDialog();
          Future.delayed(const Duration(seconds: 2), () {
            Get.back();
          });
        }),
      ),
    );
  }
}
