import 'package:flutter/material.dart';
import 'package:flutter_base_getx/helper/debouncer.dart';
import 'package:flutter_base_getx/helper/router_navigator.dart';
import 'package:flutter_base_getx/view/widgets/loading_dialog.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final debouncer = DeBouncer(milliseconds: 500);

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void dispose() {
    debouncer.dispose();
    super.dispose();
  }
  // Login controller
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  // Variables
  bool? isLoading;

  // Clear TextFields
  clearFields() {
    loginEmailController.clear();
    loginPasswordController.clear();
    update();
  }

  // Clear Authentication Screen
  clearAuthenticationScreen() {
    clearFields();
    update();
  }

  // Set Loading
  setLoading( bool value) {
    isLoading = value;
    if (value == true) {
      loaderDialog();
    } else {
      goBack();
    }
    update();
  }
/*=================================================================================
  APIs calling
 ==================================================================================*/

  // Registeration ===================================================
}
