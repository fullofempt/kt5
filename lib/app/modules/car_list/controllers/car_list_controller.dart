import 'package:get/get.dart';
import 'package:kt5d/models/carReposit.dart';

import '../../../../models/car/car.dart';

class CarListController extends GetxController {
  final cars = <Car>[].obs;
  final _carsRepository = Get.find<CarReposit>();
  final _state = States.init.obs;

  get state => _state.value;

  Future getAllCars() async {
    try {
      _state.value = States.loading;
      cars.value = await _carsRepository.getAll();
      _state.value = States.success;
    } catch(e) {
      _state.value = States.error;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getAllCars();
  }
}

enum States {
  init,
  loading,
  error,
  success
}