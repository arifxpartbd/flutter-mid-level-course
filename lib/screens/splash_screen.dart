import 'package:flutter/material.dart';
import 'package:flutter_mid_level_course/constanct/images_text.dart';
import 'package:flutter_mid_level_course/getx_controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashscreenControll = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashscreenControll.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashscreenControll.isAnimation.value ? 40 : -40,
              left: splashscreenControll.isAnimation.value ? 10 : -10,
              child: Image.asset(topImagelink),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashscreenControll.isAnimation.value ? 250 : -250,
              left: splashscreenControll.isAnimation.value ? 10 : -10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "App Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Flutter splash screen with animation",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashscreenControll.isAnimation.value ? 40 : -40,
              right: splashscreenControll.isAnimation.value ? 10 : -10,
              child: Image.asset(bottomImagelink),
            ),
          ),
        ],
      ),
    );
  }
}
