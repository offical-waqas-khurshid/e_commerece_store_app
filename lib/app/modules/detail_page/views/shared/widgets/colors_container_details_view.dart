import 'package:e_commerece_store_app/app/modules/detail_page/controllers/detail_page_controller.dart';
import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class colors_container_details_view extends GetView<DetailPageController> {

 String? name;
 Function()? onTap;

 colors_container_details_view( {this.name, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Obx(
            () {
          return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryLabelColor, width: 2.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 15.0,
                  height: 20.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.grey,
                    elevation: 0.0,
                    onPressed: onTap,
                  ),
                ),
                const SizedBox(width: 10,),
                Text('$name' , style: GoogleFonts.raleway(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),),
              ],
            ),
          );
        }
    );
  }
}