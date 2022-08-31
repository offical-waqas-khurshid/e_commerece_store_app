import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../routes/app_pages.dart';
import '../../../../utils/appColors.dart';
import '../../../home_page/controllers/home_page_controller.dart';

class GridViewColumn1 extends GetView<HomePageController> {
  GridViewColumn1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: GridView.builder
        (
          itemCount: controller.products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.0 / 1.4,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              height: 500,
              width: 157,
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_PAGE, parameters: {
                    "image": controller.products[index].image.toString(),
                    "title": controller.products[index].title.toString(),
                    "subTitle": controller.products[index].subTitle.toString(),
                    "price": controller.products[index].price.toString(),
                  });
                },
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 10, right: 8, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          controller.products[index].image.toString(),
                          height: 110,
                          width: 160,
                        ),
                        Text(controller.products[index].title.toString(),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 16)),
                        Text(controller.products[index].subTitle.toString(),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: AppColors.primaryLabelColor)),
                        Text('\$${controller.products[index].price}',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: AppColors.secondary)),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
