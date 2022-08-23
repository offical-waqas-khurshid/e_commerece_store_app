import 'package:e_commerece_store_app/app/modules/home_page/views/shared/widgets/tab_widget.dart';
import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: AppColors.primary),
        actions: [
          Container(
            width: 325,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  filled: true,
                  hintStyle:
                      const TextStyle(color: AppColors.primaryLabelColor),
                  hintText: "Search product",
                  prefixIcon: const Icon(
                    Icons.search_outlined,
                    color: AppColors.primary,
                  ),
                  fillColor: Colors.white70),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Find your suitable product now.",
              style: GoogleFonts.raleway(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 36),
            ),
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabWidget(
                    onTap: () {
                      controller.isSelected.value = 1;
                      print("${controller.isSelected.value}");
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
            Column(
              children: [
                Container(
                  height: 500,
                  width: 500,
                  child: GridView.extent(
                    primary: false,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    maxCrossAxisExtent: 300.0,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.yellow,
                        child: Image.asset(""),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
