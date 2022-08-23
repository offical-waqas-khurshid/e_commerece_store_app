import 'package:e_commerece_store_app/app/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              child: Icon(Icons.person),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              filled: true,
              hintStyle: const TextStyle(color: AppColors.primaryLabelColor),
              hintText: "Search product",
              prefixIcon: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.search_off_outlined,
                    color: AppColors.primaryLabelColor,
                  )),
            ),
          ),
        ],
      ),
      body: Center(

      ),
    );
  }
}
