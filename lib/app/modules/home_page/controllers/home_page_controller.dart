import 'package:e_commerece_store_app/app/models/Products.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {


  final count = 0.obs;
  final roomCount = 0.obs;
  final isSelected = 1.obs;

  List<Products> products = [
    Products(id:1,image: "assets/images/black.png",title: "Mulberry Clutch", subTitle:"Series 7", price: 799.0,),
    Products(id:2,image: "assets/images/blackGolden.png",title: "Gucci Black", subTitle:"Series 5", price: 100.0,),
    Products(id:3,image: "assets/images/custred.png",title: "Van Heusen", subTitle:"Series 2", price: 755.0,),
    Products(id:4,image: "assets/images/golden.png",title: "Kate Spade", subTitle:"Series 4", price: 499.0,),
    Products(id:5,image: "assets/images/red.png",title: "Kate Spade", subTitle:"Series 4", price: 499.0,),
    Products(id:6,image: "assets/images/sliver.png",title: "Kate Spade", subTitle:"Series 4", price: 499.0,),
    Products(id:7,image: "assets/images/yellow.png",title: "Kate Spade", subTitle:"Series 4", price: 499.0,),
    Products(id:8,image: "assets/images/brown_bg_lg.png",title: "Kate Spade", subTitle:"Series 4", price: 499.0,),
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
