import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class StackDetailPage extends StatelessWidget {
  final Function()? onTap;

  StackDetailPage({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8),
          width: 300,
          height: 330,
          child: Image.asset('assets/images/brown_bg_lg.png'),
        ),
         Positioned(
            top: 30.5,
            left: 20.0, child: IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back))),
        const Positioned(
            right: 20.0, top: 30.5, child: Icon(Icons.heart_broken_outlined)),
      ],
    );
  }
}
