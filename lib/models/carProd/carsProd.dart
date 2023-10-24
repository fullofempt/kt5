import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt5d/models/car/car.dart';

part 'carsProd.freezed.dart';
part 'carsProd.g.dart';

@freezed
class CarsProd with _$CarsProd {

  factory CarsProd({
    @JsonKey(name: "Car") required Car car,
  }) = _CarsProd;

  factory CarsProd.fromJson(Map<String, dynamic> json) => _$CarsProdFromJson(json);
}