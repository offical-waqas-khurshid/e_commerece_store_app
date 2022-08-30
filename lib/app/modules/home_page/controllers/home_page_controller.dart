import 'package:get/get.dart';

class HomePageController extends GetxController {


  final count = 0.obs;
  final roomCount = 0.obs;
  final isSelected = 1.obs;
  List<String> images = [
    "assets/images/brown_bag.png",
    "assets/images/brown_bg_lg.png",
    "assets/images/golden_bag.png",
    "assets/images/whit_bag.png"
  ];
  List<String> titles = [
    "Mulberry Clutch",
    "Gucci Black",
    "Van Heusen",
    "Kate Spade",
  ];
  List<String> subTitles = [
    "Series 7",
    "Series 5",
    "Series 2",
    "Series 4",
  ];
  List<int> price = [
    799,
    100,
    755,
    499,
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
