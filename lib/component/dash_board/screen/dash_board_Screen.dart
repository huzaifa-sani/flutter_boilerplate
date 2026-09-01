import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/component/bottom_nav_bar/common_bottom_bar.dart';
import '../controller/dashboard_controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});

  final List<Widget> screens = const [
    Center(child: Text("Home Screen")),
    Center(child: Text("Message Screen")),
    Center(child: Text("Vew Screen")),
    Center(child: Text("Profile Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.onPageChanged,
        children: screens,
      ),
      bottomNavigationBar: Obx(
        () => CommonBottomNavBar(
          currentIndex: controller.currentIndex.value,
          onTap: (index) => controller.changeIndex(index),
        ),
      ),
    );
  }
}





