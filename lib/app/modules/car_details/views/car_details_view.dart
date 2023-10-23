import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/car_details_controller.dart';

class CarDetailsView extends GetView<CarDetailsController> {
  const CarDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
            title: Text(controller.car != null ? controller.car!.car : "")),
        body: Builder(builder: (context) {
          if (controller.state == States.loading) {
            return const Center(
                child: SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(),
            ));
          }
          if (controller.state == States.error || controller.car == null) {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: Text("Error!"),
                );
              },
            );
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    width: Get.width,
                    height: Get.width * (9 / 16),
                    child: const Placeholder()),
                Container(
                  padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
                  child: Column(
                    children: [
                      Text(" ${controller.car!.car_model}",
                          style: const TextStyle(fontSize: 20)),
                      const SizedBox(
                        height: 24,
                      ),
                      Text("car: ${controller.car!.car}",
                          style: const TextStyle(fontSize: 15)),
                      Text(controller.car!.car_color),
                      Text(" ${controller.car!.price}",
                          style: const TextStyle(fontSize: 30)),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Купить")),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("В корзину")),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      );
    });
  }
}
