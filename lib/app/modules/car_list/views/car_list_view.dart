import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kt5d/widget/carWidget.dart';

import '../controllers/car_list_controller.dart';

class CarListView extends GetView<CarListController> {
  const CarListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CarsListView'),
        ),
        body: Center(
          child: Obx(() {
            if (controller.state == States.loading) {
              return const CircularProgressIndicator();
            } else if (controller.state == States.error) {
              showDialog(
                context: context,
                builder: (context) {
                  return const Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Error!"),
                    ),
                  );
                },
              );
            } else if (controller.state == States.success) {
              return Center(
                child: SingleChildScrollView(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      await controller.getAllCars();
                    },
                    child: SizedBox(
                      height: Get.height,
                      child: ListView.builder(
                          itemCount: controller.cars.length,
                          itemBuilder: (context, index) {
                            return CarWidget(car: controller.cars[index], index: null,);
                          }),
                    ),
                  ),
                ),
              );
            }
            return const Text("");
          }),
        ));
  }
}
