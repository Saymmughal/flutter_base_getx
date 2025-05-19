import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_getx/controllers/authentication_controller.dart';
import 'package:flutter_base_getx/utils/colors.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: whiteStatusBar(),
      child: GetBuilder<AuthController>(
        builder: (controller) {
          return Scaffold(
        key: controller.scaffoldKey,
        resizeToAvoidBottomInset: true,
        backgroundColor: whitePrimary,
        body: Container(),
      );},),
    );
  }
}
