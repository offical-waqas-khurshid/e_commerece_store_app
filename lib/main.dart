import 'package:e_commerece_store_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: Get.deviceLocale,
    );
  }
}