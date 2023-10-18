// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carProd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarProdImpl _$$CarProdImplFromJson(Map<String, dynamic> json) =>
    _$CarProdImpl(
      cars: (json['cars'] as List<dynamic>?)
              ?.map((e) => Car.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CarProdImplToJson(_$CarProdImpl instance) =>
    <String, dynamic>{
      'cars': instance.cars,
    };
