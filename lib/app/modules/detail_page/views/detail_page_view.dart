import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_page_controller.dart';

class DetailPageView extends GetView<DetailPageController> {
  const DetailPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    width: 300,
                    height: 330,
                    child: Image.asset('assets/images/brown_bg_lg.png'),
                  ),
                  const Positioned(
                      top: 30.5, left: 20.0, child: Icon(Icons.arrow_back)),
                  const Positioned(
                    right: 20.0 ,
                      top: 30.5,  child: Icon(Icons.heart_broken_outlined)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
