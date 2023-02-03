import 'package:fathah/controller/appNavigatorController.dart';
import 'package:fathah/style.dart';
import 'package:fathah/view/detectionPage.dart';
import 'package:fathah/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AppNavigator extends StatelessWidget {
  AppNavigator({super.key});

  Widget currentScreen = const Homepage();

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AppNavigatorController(),
      builder: (controller) => Scaffold(
        body: currentScreen,
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: appColors.disable,
          selectedItemColor: appColors.primary,
          backgroundColor: appColors.secondary,
          type: BottomNavigationBarType.shifting,
          currentIndex: controller.pageIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: "`الرئيسية",
              backgroundColor: appColors.secondary,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.center_focus_weak),
              label: "تعرف",
              backgroundColor: appColors.secondary,
            ),
          ],
          onTap: (index) {
            controller.changePage(index);
            switch (index) {
              case 0:
                currentScreen = Homepage();
                break;
              case 1:
                currentScreen = DetectionPage();
            }
          },
        ),
      ),
    );
  }
}
