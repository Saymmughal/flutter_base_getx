import 'package:flutter_base_getx/controllers/bottom_navigation_controller.dart';
import 'package:flutter_base_getx/utils/colors.dart';
import 'package:flutter_base_getx/utils/constant.dart';
import 'package:flutter_base_getx/utils/images.dart';
import 'package:flutter_base_getx/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_getx/view/widgets/extention/int_extension.dart';
import 'package:flutter_base_getx/view/widgets/extention/svg_image.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key, required this.currentIndex});
  final int currentIndex;
  // Bottom navigation the the bottom navigation bar of the app

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(
        builder: (controller) {
          return Container(
          decoration: BoxDecoration(
            color: controller.currentIndex == 1 ? greenPrimary : whitePrimary,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            boxShadow: const <BoxShadow>[
              BoxShadow(color: greyLight, blurRadius: 20, offset: Offset(0, 7)),
            ],
          ),
          child: Material(
            elevation: 0.0,
            color: whitePrimary,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedFontSize: 10.h,
              selectedFontSize: 10.h,
              selectedLabelStyle: TextStyle(fontFamily: poppins, fontWeight: w400),
              unselectedLabelStyle: TextStyle(fontFamily: poppins, fontWeight: w400),
              selectedItemColor: preLudeLight,
              unselectedItemColor: blackPrimary,
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: controller.currentIndex,
              onTap: (index) {
                // set the current index of the bottom navigation bar
                // the function is declared inside BottomNavigationProvider

                controller.setCurrentIndex(index);
                if (currentIndex != index) {
                  switch (index) {
                    case 0:
                      controller.setCurrentIndex(0);
                      break;
                    case 1:
                      controller.setCurrentIndex(1);
                      break;
                    default:
                      break;
                  }
                }
              },
              items: <BottomNavigationBarItem>[
                // Remote
                BottomNavigationBarItem(
                  icon: svgAssetImage(
                    controller.currentIndex == 0
                        ? Images.iconHomeFilled
                        : Images.iconHome,
                    height: 22.h,
                    width: 22.h,
                  ).paddingOnly(bottom: 5.h),
                  label: Constant.homeText,
                ),
                // // More
                BottomNavigationBarItem(
                  icon: svgAssetImage(
                    controller.currentIndex == 1
                        ? Images.iconMenuFilled
                        : Images.iconMenu,
                    height: 18.h,
                    width: 18.h,
                  ).paddingOnly(bottom: 5.h),
                  label: Constant.menuText,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
