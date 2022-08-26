import 'package:e_commerece_store_app/app/modules/home_page/views/shared/SearchBarActionOfAppbar.dart';
import 'package:e_commerece_store_app/app/modules/home_page/views/shared/grid_view_column.dart';
import 'package:e_commerece_store_app/app/modules/home_page/views/shared/widgets/tab_widget.dart';
import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.secondary));
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Icon(
                Icons.person,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.secondary,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          searchbar_action_of_appbar(),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Find your suitable product now.",
              style: GoogleFonts.raleway(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 36),
            ),
            const SizedBox(height: 28),
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabWidget(
                    onTap: () {
                      controller.isSelected.value = 1;
                    },
                    name: "Hand Bags",
                    widthOfLine: 75.0,
                    lineColor: controller.isSelected.value == 1
                        ? AppColors.secondary
                        : Colors.white,
                    textColor: controller.isSelected.value == 1
                        ? AppColors.secondary
                        : AppColors.primaryLabelColor,
                  ),
                  TabWidget(
                    onTap: () => controller.isSelected.value = 2,
                    name: "Watch",
                    widthOfLine: 43.0,
                    lineColor: controller.isSelected.value == 2
                        ? AppColors.secondary
                        : Colors.white,
                    textColor: controller.isSelected.value == 2
                        ? AppColors.secondary
                        : AppColors.primaryLabelColor,
                  ),
                  TabWidget(
                    onTap: () => controller.isSelected.value = 3,
                    name: "Books",
                    widthOfLine: 45.0,
                    lineColor: controller.isSelected.value == 3
                        ? AppColors.secondary
                        : Colors.white,
                    textColor: controller.isSelected.value == 3
                        ? AppColors.secondary
                        : AppColors.primaryLabelColor,
                  ),
                  TabWidget(
                    onTap: () => controller.isSelected.value = 4,
                    name: "Glasses",
                    widthOfLine: 55.0,
                    lineColor: controller.isSelected.value == 4
                        ? AppColors.secondary
                        : Colors.white,
                    textColor: controller.isSelected.value == 4
                        ? AppColors.secondary
                        : AppColors.primaryLabelColor,
                  ),
                ],
              );
            }),
            const SizedBox(height: 28),
            const GridViewColumn(),
          ],
        ),
      ),
    );
  }
}
