import 'package:flutter/material.dart';
import 'package:flutter_base_getx/view/screens/home_screen/home_screen.dart';
import 'package:flutter_base_getx/view/screens/menu_screen/menu_screeen.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  int currentIndex = 0;
  // Screens List
  /*=========================================================================
      Define ther screens we are going to navigate from botton navigation bar
      in bottomNavigationIndex list
    ========================================================================*/
  List<Widget> bottomNavigationIndex = [
    const HomeScreen(),
    const MenuScreen()
  ];
  // set Current Index
  setCurrentIndex(int newIndex) {
    currentIndex = newIndex;
    update();
  }

  // Rest Index
  resetIndex() {
    currentIndex = 0;
    update();
  }

/*=====================================
  APIs calling
 ======================================*/
  // Veriables
}
