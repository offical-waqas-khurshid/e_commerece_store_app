import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../controllers/detail_page_controller.dart';

class StackDetailPage extends GetView<DetailPageController> {
  final Function()? onTap;

  StackDetailPage({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              width: 300,
              height: 300,
              child: Image.asset(controller.image.value, fit: BoxFit.fill,),
            ),
             Positioned(
                top: 30.5,
                left: 20.0, child: IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back))),
            const Positioned(
                right: 40.0, top: 40.5, child: Icon(Icons.heart_broken_outlined)),
          ],
        );
      }
    );
  }
}
