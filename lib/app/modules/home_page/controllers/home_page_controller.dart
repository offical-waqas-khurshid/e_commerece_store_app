import 'package:e_commerece_store_app/app/models/Products.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {


  final count = 0.obs;
  final roomCount = 0.obs;
  final isSelected = 1.obs;

  List<Products> products = [
    Products(id:1,image: "assets/images/brown_bg_lg.png",title: "Mulberry Clutch", subTitle:"Series 7", price: 799.0,),
    Products(id:2,image: "assets/images/golden_bag.png",title: "Gucci Black", subTitle:"Series 5", price: 100.0,),
    Products(id:3,image: "assets/images/whit_bag.png",title: "Van Heusen", subTitle:"Series 2", price: 755.0,),
    Products(id:4,image: "assets/images/brown_bg_lg.png",title: "Kate Spade", subTitle:"Series 4", price: 499.0,),
    Products(id:5,image: "assets/images/brown_bg_lg.png",title: "Kate Spade", subTitle:"Series 4", price: 499.0,),
    Products(id:6,image: "assets/images/brown_bg_lg.png",title: "Kate Spade", subTitle:"Series 4", price: 499.0,),
    Products(id:7,image: "assets/images/brown_bg_lg.png",title: "Kate Spade", subTitle:"Series 4", price: 499.0,),
  ];
  // List<String> images = [
  //
  //   "assets/images/brown_bg_lg.png",
  //   "assets/images/golden_bag.png",
  //   "assets/images/whit_bag.png"
  // ];
  // List<String> titles = [
  //   "Mulberry Clutch",
  //   "Gucci Black",
  //   "Van Heusen",
  //   "Kate Spade",
  // ];
  // List<String> subTitles = [
  //   "Series 7",
  //   "Series 5",
  //   "Series 2",
  //   "Series 4",
  // ];
  // List<int> price = [
  //   799,
  //   100,
  //   755,
  //   499,
  // ];
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
