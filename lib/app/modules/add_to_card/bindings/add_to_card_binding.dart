import 'package:get/get.dart';

import '../controllers/add_to_card_controller.dart';

class AddToCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddToCardController>(
      () => AddToCardController(),
    );
  }
}
