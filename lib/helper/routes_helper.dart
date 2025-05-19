import 'package:flutter_base_getx/view/screens/authentication_screens/login_screen.dart';
import 'package:flutter_base_getx/view/screens/connection_screen/connection_error_screen.dart';
import 'package:flutter_base_getx/view/screens/main_screen/main_screen.dart';
import 'package:flutter_base_getx/view/screens/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class RouterHelper {
  static const initial = "/";
  static const logInScreen = "/logInScreen";
  static const mainScreen = "/mainScreen";

  static const noConnectionScreen = "/noConnectionScreen";

  static final routes = [
    GetPage(name: initial, page: () => const SplashScreen()),
    GetPage(name: noConnectionScreen, page: () => const NoConnection()),
    GetPage(name: logInScreen, page: () => const LoginScreen()),
    GetPage(name: mainScreen, page: () => const MainScreen()),
  ];
}
