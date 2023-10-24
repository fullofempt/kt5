import 'package:dio/dio.dart';
import 'package:kt5d/models/carProd/carProd.dart';

import '../../../models/car/car.dart';
import './carProd/carsProd.dart';

class CarReposit {
  var httpClient = Dio(BaseOptions(baseUrl: 'https://myfakeapi.com/api/cars'));

  Future<List<Car>> getAll() async {
    var res = await httpClient.get('/');
    if (res.statusCode != 200) {
      throw Exception(res.data);
    }
    var data = CarProd.fromJson(res.data);

    return data.cars;
  }

  Future<Car> getById(int id) async {
    var res = await httpClient.get('/$id');
    if (res.statusCode != 200) {
      throw Exception(res.data);
    }

    var data = CarsProd.fromJson(res.data);

    return data.car;
  }
}
