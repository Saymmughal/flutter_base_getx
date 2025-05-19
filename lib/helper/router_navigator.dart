import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Can pop Route or not
bool canGoBack() => Navigator.canPop(Get.context!);
// May be pop Route or not
Future<bool> maybeGoBack() => Navigator.maybePop(Get.context!);
// pop Route
void goBack() => Navigator.pop(Get.context!);
// Pop Until Route
void goBackUntil(String routeName) => Navigator.popUntil(
    Get.context!, ModalRoute.withName(routeName));
// Push Named Route
Future<Object?> goToNamed(String routeName, {Object? arguments}) =>
    Navigator.pushNamed(Get.context!, routeName,
        arguments: arguments);
// Push And Replace Named Route
Future<Object?> goReplacementNamed(String routeName, {Object? arguments}) =>
    Navigator.pushReplacementNamed(Get.context!, routeName,
        arguments: arguments);
// Push Named and Remove Until Route
Future<Object?> goNamedAndRemoveUntil(String routeName) =>
    Navigator.pushNamedAndRemoveUntil(
        Get.context!, routeName, (route) => false);
// Pop And Push Named Route
Future<Object?> goBackAndForwardNamed(String routeName, {Object? arguments}) =>
    Navigator.popAndPushNamed(Get.context!, routeName,
        arguments: arguments);
// Default Route Name
String defaultRouteName() => Navigator.defaultRouteName;
// Restorable Pop and Push Named Route
String restorableGoBackAndForwardNamed(String routeName, {Object? arguments}) =>
    Navigator.restorablePopAndPushNamed(Get.context!, routeName,
        arguments: arguments);
// Restorable Push Named Route
String restorableForwardNamed(String routeName, {Object? arguments}) =>
    Navigator.restorablePushNamed(Get.context!, routeName,
        arguments: arguments);
// Restorable Push Named And Remove Until Route
String restorableForwardNamedAndRemoveUntil(String routeName) =>
    Navigator.restorablePushNamedAndRemoveUntil(
        Get.context!, routeName, (route) => false);
// Restorable Push Remplacement Named Route
String restorableForwardReplacementNamed(String routeName,
        {Object? arguments}) =>
    Navigator.restorablePushReplacementNamed(
        Get.context!, routeName,
        arguments: arguments);

// Pop If Can
void goBackIfCan({Future<Object?>? elseCondition}) {
  if (canGoBack()) {
    goBack();
  } else {
    elseCondition;
  }
}

void goAndRemoveAllPath(String routeName, {Object? arguments}) {
  if (canGoBack()) {
    Navigator.popUntil(Get.context!, (route) => route.isFirst);
  }
  goReplacementNamed(routeName, arguments: arguments);
}

void goForwardAndBackUntilPath(String currentScreen, String routeName,
    {Object? arguments}) {
  if (canGoBack()) {
    goBackUntil(currentScreen);
  }
  goReplacementNamed(routeName, arguments: arguments);
}
