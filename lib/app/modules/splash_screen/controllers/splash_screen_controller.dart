import 'dart:async';

import 'package:e_commerece_store_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  //TODO: Implement SplashScreenController

  @override
  void onReady() {
    super.onReady();
    loading();
  }
  Future<void> loading() async {
    Timer(const Duration(seconds: 5),(){
      Get.offAllNamed(Routes.HOME_PAGE);
    });
  }
}
