import 'dart:async';

import 'package:flutter_base_getx/helper/router_navigator.dart';
import 'package:flutter_base_getx/helper/routes_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_getx/utils/colors.dart';
import 'package:flutter_base_getx/utils/dimension.dart';
import 'package:flutter_base_getx/view/widgets/extention/string_extension.dart';
import 'package:flutter_base_getx/view/widgets/extention/widget_extension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    routes();
  }

  void routes() async {
    Timer(const Duration(seconds: 3), () async {
      //   bool? isLogin = await LocalDb.getLogin;
      //   if (isLogin == true) {
      //   } else {
      goReplacementNamed(RouterHelper.mainScreen);
      //   }
    });
  }

  @override
  Widget build(BuildContext context) {
    mediaQuerySize(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: whiteStatusBar(),
      child: Scaffold(body: Container(child: 'Splash Screen'.to16W600Text()).center),
    );
  }
}
