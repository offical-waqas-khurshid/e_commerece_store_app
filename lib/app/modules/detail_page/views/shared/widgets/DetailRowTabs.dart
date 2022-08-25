import 'package:e_commerece_store_app/app/modules/detail_page/controllers/detail_page_controller.dart';
import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailRowTabs extends GetView<DetailPageController> {

  String? title;
  Function()? onTap;
  double? lineHeight;
  double? lineWidth;
  Color?  textColor;
  Color? lineColor;

  DetailRowTabs({this.title, this.onTap, this.lineColor, this.textColor, this.lineHeight,this.lineWidth});

  @override
  Widget build(BuildContext context) {
          return Row(
            children: [
              GestureDetector(
                onTap: onTap,
                child: Column(
                  children: [
                    Text('$title'),
                    Container( height: lineHeight, width: lineWidth, color: lineColor,),
                  ],
                ),
              ),
            ],
          );
  }
}