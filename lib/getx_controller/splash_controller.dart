import 'package:flutter_mid_level_course/screens/home_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();

  RxBool isAnimation = false.obs;

  Future startAnimation()async{
    await Future.delayed(const Duration(milliseconds: 500));
    isAnimation.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    //Get.offAll(const HomeScreen());
    Get.offAll(const HomeScreen());


  }
}