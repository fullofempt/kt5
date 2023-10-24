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
          return SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Text("car: ${controller.car!.car}",
                            style: const TextStyle(fontSize: 30)),
                        Text("car-model: ${controller.car!.car_model}"),
                        Text("car-color: ${controller.car!.car_color}"),
                        Container(margin: EdgeInsets.only(top:40),
                          child: Text("PRICE: ${controller.car!.price}",
                              style: const TextStyle(fontSize: 40)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top:400),
                          width: 300,
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text("Купить")),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      );
    });
  }
}
