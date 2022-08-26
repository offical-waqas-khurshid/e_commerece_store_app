import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../routes/app_pages.dart';
import 'widgets/grid_view_containers_widget.dart';

class GridViewColumn extends StatelessWidget {
  const GridViewColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 600,
          width: 430,
          child: GridView.extent(
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.0/1.4,
            maxCrossAxisExtent: 200.0,
            children:  <Widget>[
              GridViewContainer(
                onTap: () => Get.toNamed(Routes.DETAIL_PAGE),
                image: "assets/images/whit_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333,
              ),
              GridViewContainer(
                onTap: () => Get.toNamed(Routes.DETAIL_PAGE),
                image: "assets/images/golden_bag.png",
                title: 'Gucci Black',
                subtitle: 'Series 4',
                price: 599,
              ),
              GridViewContainer(
                onTap: () => Get.toNamed(Routes.DETAIL_PAGE),
                image: "assets/images/light_black.png",
                title: 'Van Heusen',
                subtitle: 'All Series',
                price: 299,
              ),
              GridViewContainer(
                onTap: () => Get.toNamed(Routes.DETAIL_PAGE),
                image: "assets/images/whit_bag.png",
                title: 'Kate Spade',
                subtitle: 'Series 4',
                price: 599,
              ),
              GridViewContainer(
                onTap: () => Get.toNamed(Routes.DETAIL_PAGE),
                image: "assets/images/light_black.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                onTap: () => Get.toNamed(Routes.DETAIL_PAGE),
                image: "assets/images/light_black.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                onTap: () => Get.toNamed(Routes.DETAIL_PAGE),
                image: "assets/images/light_black.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                onTap: () => Get.toNamed(Routes.DETAIL_PAGE),
                image: "assets/images/light_black.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                onTap: () => Get.toNamed(Routes.DETAIL_PAGE),
                image: "assets/images/light_black.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                onTap: () => Get.toNamed(Routes.DETAIL_PAGE),
                image: "assets/images/light_black.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                onTap: () => Get.toNamed(Routes.DETAIL_PAGE),
                image: "assets/images/light_black.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}