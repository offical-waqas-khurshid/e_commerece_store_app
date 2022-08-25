import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/detail_page_controller.dart';
import 'shared/widgets/DetailRowTabs.dart';
import 'shared/widgets/colors_container_details_view.dart';

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
                      right: 20.0,
                      top: 30.5,
                      child: Icon(Icons.heart_broken_outlined)),
                ],
              ),
              Container(
                height: 423,
                width: 390,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Mulberry Clutch',
                              style: GoogleFonts.raleway(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '( With solo loop )',
                              style: GoogleFonts.raleway(
                                  color: AppColors.primaryLabelColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        Text(
                          '\$799',
                          style: GoogleFonts.poppins(
                              color: AppColors.secondary,
                              fontWeight: FontWeight.w500,
                              fontSize: 24),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Colors',
                          style: GoogleFonts.raleway(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Obx(
                      () {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            colors_container_details_view(
                              onTap: (){
                                controller.isSelected.value = 1;
                                print(controller.isSelected.value);
                                },
                              name: 'Check Pink',
                              btnColor: AppColors.floatingBtnColor1,
                              borderColor: controller.isSelected.value == 1
                                  ? AppColors.primaryLabelColor
                                  : AppColors.borderColor,
                              textColor: controller.isSelected.value == 1 ? AppColors.primary: AppColors.primaryLabelColor,
                            ),
                            colors_container_details_view(
                              onTap: (){
                                controller.isSelected.value = 2;
                                print(controller.isSelected.value);
                              },
                              name: 'Check Pink',
                              btnColor: AppColors.floatingBtnColor2,
                              borderColor: controller.isSelected.value == 2
                                  ? AppColors.primaryLabelColor
                                  : AppColors.borderColor,
                              textColor: controller.isSelected.value == 2 ? AppColors.primary: AppColors.primaryLabelColor,
                            ),
                            colors_container_details_view(
                              onTap: (){
                                controller.isSelected.value = 3;
                                print(controller.isSelected.value);
                              },
                              name: 'Check Pink',
                              btnColor: AppColors.floatingBtnColor3,
                              borderColor: controller.isSelected.value == 3
                                  ? AppColors.primaryLabelColor
                                  : AppColors.borderColor,
                              textColor: controller.isSelected.value == 3 ? AppColors.primary: AppColors.primaryLabelColor,
                            ),
                          ],
                        );
                      }
                    ),
                  const SizedBox(height: 30,),
                   Obx(
                     () {
                       return Row(
                         children: [
                           DetailRowTabs(
                             onTap: (){
                               controller.isSelectedReviews.value = 1;
                             },
                             title: 'Details',
                             lineHeight: 3,
                             lineWidth: 40,
                             textColor: controller.isSelectedReviews.value == 1 ? AppColors.secondary:AppColors.primaryLabelColor,
                             lineColor: controller.isSelectedReviews.value == 1 ? AppColors.secondary:Colors.white,
                           ),
                          const SizedBox(width: 20,),
                           DetailRowTabs(
                             onTap: (){
                               controller.isSelectedReviews.value = 2;
                             },
                             title: 'Reviews',
                             lineHeight: 3,
                             lineWidth: 50,
                             textColor: controller.isSelectedReviews.value == 2 ? AppColors.secondary:AppColors.primaryLabelColor,
                             lineColor: controller.isSelectedReviews.value == 2 ? AppColors.secondary:Colors.white,
                           ),
                         ],
                       );
                     }
                   ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


