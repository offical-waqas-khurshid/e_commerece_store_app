import 'package:e_commerece_store_app/app/modules/detail_page/views/shared/DetailBtnSizeBox.dart';
import 'package:e_commerece_store_app/app/modules/detail_page/views/shared/DetailRowContainer.dart';
import 'package:e_commerece_store_app/app/modules/detail_page/views/shared/ProductDetailContainer.dart';
import 'package:e_commerece_store_app/app/modules/detail_page/views/shared/StackDetailPage.dart';
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
              const StackDetailPage(children: [],),
              Container(
                padding: const EdgeInsets.all(20),
                height: 423,
                width: 390,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0)),
                  color: Colors.white,
                ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 300,
                        child: const DetailRowContainer(),
                      ),
                     const SizedBox(height: 10,),
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
                      const SizedBox(height: 5,),
                      Obx(() {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            colors_container_details_view(
                              onTap: () {
                                controller.isSelected.value = 1;
                              },
                              name: 'Check Pink',
                              btnColor: AppColors.floatingBtnColor1,
                              borderColor: controller.isSelected.value == 1
                                  ? AppColors.primaryLabelColor
                                  : AppColors.borderColor,
                              textColor: controller.isSelected.value == 1
                                  ? AppColors.primary
                                  : AppColors.primaryLabelColor,
                            ),
                            colors_container_details_view(
                              onTap: () {
                                controller.isSelected.value = 2;
                              },
                              name: 'Check Pink',
                              btnColor: AppColors.floatingBtnColor2,
                              borderColor: controller.isSelected.value == 2
                                  ? AppColors.primaryLabelColor
                                  : AppColors.borderColor,
                              textColor: controller.isSelected.value == 2
                                  ? AppColors.primary
                                  : AppColors.primaryLabelColor,
                            ),
                            colors_container_details_view(
                              onTap: () {
                                controller.isSelected.value = 3;
                              },
                              name: 'Check Pink',
                              btnColor: AppColors.floatingBtnColor3,
                              borderColor: controller.isSelected.value == 3
                                  ? AppColors.primaryLabelColor
                                  : AppColors.borderColor,
                              textColor: controller.isSelected.value == 3
                                  ? AppColors.primary
                                  : AppColors.primaryLabelColor,
                            ),
                          ],
                        );
                      }),
                      const SizedBox(
                        height: 5,
                      ),
                      Obx(() {
                        return Row(
                          children: [
                            DetailRowTabs(
                              onTap: () {
                                controller.isSelectedReviews.value = 1;
                              },
                              title: 'Details',
                              lineHeight: 3,
                              lineWidth: 50,
                              textColor: controller.isSelectedReviews.value == 1
                                  ? AppColors.secondary
                                  : AppColors.primaryLabelColor,
                              lineColor: controller.isSelectedReviews.value == 1
                                  ? AppColors.secondary
                                  : Colors.white,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            DetailRowTabs(
                              onTap: () {
                                controller.isSelectedReviews.value = 2;
                              },
                              title: 'Reviews',
                              lineHeight: 3,
                              lineWidth: 60,
                              textColor: controller.isSelectedReviews.value == 2
                                  ? AppColors.secondary
                                  : AppColors.primaryLabelColor,
                              lineColor: controller.isSelectedReviews.value == 2
                                  ? AppColors.secondary
                                  : Colors.white,
                            ),
                          ],
                        );
                      }),
                     const ProductDetailContainer(),
                      const SizedBox(
                        height: 5,
                      ),
                    const  DetailBtnSizeBox()
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