import 'package:get/get.dart';
import 'package:kt5d/models/carReposit.dart';

import '../../../../models/car/car.dart';

class CarDetailsController extends GetxController {
  final _car = Rx<Car?>(null);
  final _state = States.init.obs;
  final _carReposit = Get.find<CarReposit>();

  Car? get car => _car.value;
  States get state => _state.value;

  Future getCar(int id) async {
    try {
      _state.value = States.loading;
      _car.value = await _carReposit.getById(id);
      _state.value = States.success;
    } catch (error) {
      _state.value = States.error;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getCar(Get.arguments);
  }
}

enum States { init, loading, success, error }
