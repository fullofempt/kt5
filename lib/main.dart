import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kt5d/models/carReposit.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.put(CarReposit());

  runApp(
    GetMaterialApp(
      title: "Машинки",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

