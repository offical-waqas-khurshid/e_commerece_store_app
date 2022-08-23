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
      body: Center(
        child: Column(
          children: [
            Text(
              "Find your suitable product now.",
              style: GoogleFonts.raleway(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 36),
            ),

          ],
        ),
      ),
    );
  }
}
