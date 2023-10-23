
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt5d/app/routes/app_pages.dart';

import '../../models/car/car.dart';

class CarList extends StatelessWidget {
  final Car car;

  const CarList({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){Get.toNamed(Routes.CAR_LIST, arguments: car.id);},
      enabled: car.availability,
      leading: Text("#${car.id}"),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${car.car} ${car.car_model}'),
          Text(
            car.car_color,
            style: TextStyle(fontSize: 10, color: Get.theme.primaryColor),
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(" ${car.price}")],
      ),
    );
  }
}