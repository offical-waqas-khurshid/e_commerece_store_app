import 'package:e_commerece_store_app/app/modules/detail_page/controllers/detail_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class colors_container_details_view extends GetView<DetailPageController> {

 String? name;
 Function()? onTap;
  Color borderColor;
 Color? textColor;
 Color? btnColor;

 colors_container_details_view( {this.name, this.onTap, required this.borderColor, this.textColor, this.btnColor});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 2.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 15.0,
                    height: 20.0,
                    // child: FloatingActionButton(
                    //   backgroundColor: btnColor,
                    //   elevation: 0.0,
                    //   onPressed: (){},
                    // ),
                  ),
                  const SizedBox(width: 10,),
                  Text('$name', style: TextStyle(color: textColor, fontSize: 12,fontWeight: FontWeight.w500 ),),
                ],
              ),
            ),
    );
  }
}