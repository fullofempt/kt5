import 'package:get/get.dart';

import '../modules/car_details/bindings/car_details_binding.dart';
import '../modules/car_details/views/car_details_view.dart';
import '../modules/car_list/bindings/car_list_binding.dart';
import '../modules/car_list/views/car_list_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CAR_LIST;

  static final routes = [
    GetPage(
      name: _Paths.CAR_DETAILS,
      page: () => const CarDetailsView(),
      binding: CarDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CAR_LIST,
      page: () => const CarListView(),
      binding: CarListBinding(),
    ),
  ];
}
