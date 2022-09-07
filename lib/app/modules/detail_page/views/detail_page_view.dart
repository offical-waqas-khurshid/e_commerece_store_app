import 'package:badges/badges.dart';
import 'package:e_commerece_store_app/app/modules/detail_page/views/shared/DetailBtnSizeBox.dart';
import 'package:e_commerece_store_app/app/modules/detail_page/views/shared/ProductDetailContainer.dart';
import 'package:e_commerece_store_app/app/modules/detail_page/views/shared/SizeContainer.dart';
import 'package:e_commerece_store_app/app/modules/detail_page/views/shared/StackDetailPage.dart';
import 'package:e_commerece_store_app/app/modules/home_page/controllers/home_page_controller.dart';
import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../routes/app_pages.dart';
import '../controllers/detail_page_controller.dart';
import 'shared/widgets/DetailRowTabs.dart';
import 'shared/widgets/colors_container_details_view.dart';

class DetailPageView extends GetView<DetailPageController> {
  const DetailPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.statusBarColor));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.secondary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Detail Page'),
            SizedBox(
              child: Obx(
                 () {
                  return Badge(
                    badgeContent: Text("${Get.find<HomePageController>().addToCartList.length}"),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(
                          Routes.ADD_TO_CARD,
                        );
                      },
                      child: const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
      body: Obx(() {
        return controller.isLoading.value
            ? const CircularProgressIndicator()
            : CustomScrollView(
                slivers: [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.transparent,
                    expandedHeight: 400.0,
                    pinned: false,
                    flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: const Text("",
                            style: TextStyle(
                                color: AppColors.secondary,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700)),
                        background: StackDetailPage(
                          image: controller.product?.image,
                          onTap: () {},
                        )),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        //StackDetailPage(image: controller.product?.image,onTap: (){},),
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 390,
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${controller.product?.title}",
                                          style: GoogleFonts.raleway(
                                              color: AppColors.primary,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "${controller.product?.subTitle}",
                                          style: GoogleFonts.raleway(
                                              color: AppColors.primary,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "\$${controller.product?.price}",
                                      style: GoogleFonts.raleway(
                                          color: AppColors.secondary,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 26),
                                    ),
                                  ],
                                ),
                              ),
                            const  Divider(color: AppColors.dividerColor,),
                              Row(
                                children: [
                                  Text('Size', style: GoogleFonts.raleway(
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16)),
                                ],
                              ),
                              Obx(
                                () {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:  [
                                      SizeContainer(onTap: (){
                                        controller.isSelectedSize.value = 1;
                                      },
                                        titleOfSize:  '${controller.product?.size}',
                                        backgroundColor: controller.isSelectedSize.value == 1 ? AppColors.sizeBorderColor: AppColors.textColor,
                                        borderColor: controller.isSelectedSize.value == 1 ? AppColors.primaryIconColor: AppColors.primaryLabelColor,
                                        textColor: controller.isSelectedSize.value == 1 ? AppColors.textColor: AppColors.primaryLabelColor,
                                      ),
                                      SizeContainer(onTap: (){
                                        controller.isSelectedSize.value = 2;
                                      },
                                        titleOfSize: 'L',
                                        backgroundColor: controller.isSelectedSize.value == 2 ? AppColors.sizeBorderColor: AppColors.textColor,
                                        borderColor: controller.isSelectedSize.value == 2 ? AppColors.primaryIconColor: AppColors.primaryLabelColor,
                                        textColor: controller.isSelectedSize.value == 2 ? AppColors.textColor: AppColors.primaryLabelColor,
                                      ),
                                      SizeContainer(onTap: (){
                                        controller.isSelectedSize.value = 3;
                                      },
                                        titleOfSize: 'XL',
                                        backgroundColor: controller.isSelectedSize.value == 3 ? AppColors.sizeBorderColor: AppColors.textColor,
                                        borderColor: controller.isSelectedSize.value == 3 ? AppColors.primaryIconColor: AppColors.primaryLabelColor,
                                        textColor: controller.isSelectedSize.value == 3? AppColors.textColor: AppColors.primaryLabelColor,
                                      ),
                                      SizeContainer(onTap: (){
                                        controller.isSelectedSize.value = 4;
                                      },
                                        titleOfSize: 'S',
                                        backgroundColor: controller.isSelectedSize.value == 4 ? AppColors.sizeBorderColor: AppColors.textColor,
                                        borderColor: controller.isSelectedSize.value == 4 ? AppColors.primaryIconColor: AppColors.primaryLabelColor,
                                        textColor: controller.isSelectedSize.value == 4 ? AppColors.textColor: AppColors.primaryLabelColor,
                                      ),
                                      SizeContainer(onTap: (){
                                        controller.isSelectedSize.value = 5;
                                      },
                                        titleOfSize: 'XS',
                                        backgroundColor: controller.isSelectedSize.value == 5 ? AppColors.sizeBorderColor: AppColors.textColor,
                                        borderColor: controller.isSelectedSize.value == 5 ? AppColors.primaryIconColor: AppColors.primaryLabelColor,
                                        textColor: controller.isSelectedSize.value == 5 ? AppColors.textColor: AppColors.primaryLabelColor,
                                      ),
                                      SizeContainer(onTap: (){
                                        controller.isSelectedSize.value = 6;
                                      },
                                        titleOfSize: '2XL',
                                        backgroundColor: controller.isSelectedSize.value == 6 ? AppColors.sizeBorderColor: AppColors.textColor,
                                        borderColor: controller.isSelectedSize.value == 6 ? AppColors.primaryIconColor: AppColors.primaryLabelColor,
                                        textColor: controller.isSelectedSize.value == 6 ? AppColors.textColor: AppColors.primaryLabelColor,
                                      ),
                                    ],
                                  );
                                }
                              ),
                              const SizedBox(
                                height: 10,
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
                              const SizedBox(
                                height: 5,
                              ),
                              Obx(() {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    colors_container_details_view(
                                      onTap: () {
                                        controller.isSelected.value = 1;
                                      },
                                      name: 'Check Pink',
                                      btnColor: AppColors.floatingBtnColor1,
                                      borderColor:
                                          controller.isSelected.value == 1
                                              ? AppColors.primaryLabelColor
                                              : AppColors.borderColor,
                                      textColor:
                                          controller.isSelected.value == 1
                                              ? AppColors.primary
                                              : AppColors.primaryLabelColor,
                                    ),
                                    colors_container_details_view(
                                      onTap: () {
                                        controller.isSelected.value = 2;
                                      },
                                      name: 'Check Pink',
                                      btnColor: AppColors.floatingBtnColor2,
                                      borderColor:
                                          controller.isSelected.value == 2
                                              ? AppColors.primaryLabelColor
                                              : AppColors.borderColor,
                                      textColor:
                                          controller.isSelected.value == 2
                                              ? AppColors.primary
                                              : AppColors.primaryLabelColor,
                                    ),
                                    colors_container_details_view(
                                      onTap: () {
                                        controller.isSelected.value = 3;
                                      },
                                      name: 'Check Pink',
                                      btnColor: AppColors.floatingBtnColor3,
                                      borderColor:
                                          controller.isSelected.value == 3
                                              ? AppColors.primaryLabelColor
                                              : AppColors.borderColor,
                                      textColor:
                                          controller.isSelected.value == 3
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
                                      textColor:
                                          controller.isSelectedReviews.value ==
                                                  1
                                              ? AppColors.secondary
                                              : AppColors.primaryLabelColor,
                                      lineColor:
                                          controller.isSelectedReviews.value ==
                                                  1
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
                                      textColor:
                                          controller.isSelectedReviews.value ==
                                                  2
                                              ? AppColors.secondary
                                              : AppColors.primaryLabelColor,
                                      lineColor:
                                          controller.isSelectedReviews.value ==
                                                  2
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
                              DetailBtnSizeBox(controller.product)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
      }),
    );
  }
}


