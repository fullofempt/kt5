import 'package:get/get.dart';

import '../controllers/car_list_controller.dart';

class CarListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarListController>(
      () => CarListController(),
    );
  }
}
