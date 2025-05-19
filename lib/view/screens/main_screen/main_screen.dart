import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_getx/controllers/bottom_navigation_controller.dart';
import 'package:flutter_base_getx/utils/colors.dart';
import 'package:flutter_base_getx/view/widgets/bottom_navigation.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: whiteStatusBar(),
      child:  GetBuilder<BottomNavigationController>(
        init: BottomNavigationController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor:
                controller.currentIndex == 1 ? greenPrimary : whitePrimary,
            body: controller.bottomNavigationIndex[controller.currentIndex],
            bottomNavigationBar: const BottomNavigation(currentIndex: 0),
          );
        },
      ),
    );
  }
}
