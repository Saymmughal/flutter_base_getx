import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_getx/helper/router_navigator.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:flutter_base_getx/data/model/connection_model/connection_model.dart';
import 'package:flutter_base_getx/utils/constant.dart';
import '../helper/routes_helper.dart';

Future<bool> checkInternet(
  NavigatorState navigator,
  String screen,
) async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult.contains(ConnectivityResult.mobile) ) {
    if (await InternetConnectionChecker.instance.hasConnection) {
      debugPrint("Connected with mobile");
      return true;
    } else {
      debugPrint("no connection");
      navigateToNoConnectionScreen(screen);
      return false;
    }
  } else if (connectivityResult.contains(ConnectivityResult.wifi) ) {
    if (await InternetConnectionChecker.instance.hasConnection) {
      debugPrint("Connected with wifi");
      return true;
    } else {
      navigateToNoConnectionScreen(screen);
      debugPrint("no connection");
      return false;
    }
  } else {
    debugPrint(" not Connected");
    navigateToNoConnectionScreen(screen);
    return false;
  }
}

void navigateToNoConnectionScreen(String screen, {Object? arguments}) {
  Future.delayed(Duration.zero, () {
    goReplacementNamed(
      RouterHelper.noConnectionScreen,
      arguments: ConnectionModel(
        currentScreen: screen,
        message: Constant.internetConnectionMessage,
        arguments: arguments,
      ),
    );
  });
}
