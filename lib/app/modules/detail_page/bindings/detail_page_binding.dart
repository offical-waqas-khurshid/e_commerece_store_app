import 'package:get/get.dart';

import '../controllers/detail_page_controller.dart';

class DetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPageController>(
      () => DetailPageController(),
    );
  }
}
