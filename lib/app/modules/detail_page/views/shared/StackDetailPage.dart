import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StackDetailPage extends StatelessWidget {
  final Function()? onTap;
  String? image;

  StackDetailPage({this.image,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
          width: 300,
          height: 300,
          child: Image.asset(image!, fit: BoxFit.fill,),
        ),
        Positioned(
            top: 30.5,
            left: 20.0, child: IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back))),
        const Positioned(
            right: 40.0, top: 40.5, child: Icon(Icons.heart_broken_outlined)),
      ],
    );
  }
}
