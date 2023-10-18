import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';

@freezed
class Car with _$Car {

  factory Car({
    required int id,
    required String car,
    // ignore: non_constant_identifier_names
    required String car_model,
    // ignore: non_constant_identifier_names
    required String car_color,
    required String price,
    required bool availability,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}