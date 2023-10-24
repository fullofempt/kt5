// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carsProd.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarsProd _$CarsProdFromJson(Map<String, dynamic> json) {
  return _CarsProd.fromJson(json);
}

/// @nodoc
mixin _$CarsProd {
  @JsonKey(name: "Car")
  Car get car => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarsProdCopyWith<CarsProd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarsProdCopyWith<$Res> {
  factory $CarsProdCopyWith(CarsProd value, $Res Function(CarsProd) then) =
      _$CarsProdCopyWithImpl<$Res, CarsProd>;
  @useResult
  $Res call({@JsonKey(name: "Car") Car car});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$CarsProdCopyWithImpl<$Res, $Val extends CarsProd>
    implements $CarsProdCopyWith<$Res> {
  _$CarsProdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
  }) {
    return _then(_value.copyWith(
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarsProdImplCopyWith<$Res>
    implements $CarsProdCopyWith<$Res> {
  factory _$$CarsProdImplCopyWith(
          _$CarsProdImpl value, $Res Function(_$CarsProdImpl) then) =
      __$$CarsProdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "Car") Car car});

  @override
  $CarCopyWith<$Res> get car;
}

/// @nodoc
class __$$CarsProdImplCopyWithImpl<$Res>
    extends _$CarsProdCopyWithImpl<$Res, _$CarsProdImpl>
    implements _$$CarsProdImplCopyWith<$Res> {
  __$$CarsProdImplCopyWithImpl(
      _$CarsProdImpl _value, $Res Function(_$CarsProdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
  }) {
    return _then(_$CarsProdImpl(
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarsProdImpl implements _CarsProd {
  _$CarsProdImpl({@JsonKey(name: "Car") required this.car});

  factory _$CarsProdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarsProdImplFromJson(json);

  @override
  @JsonKey(name: "Car")
  final Car car;

  @override
  String toString() {
    return 'CarsProd(car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarsProdImpl &&
            (identical(other.car, car) || other.car == car));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, car);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarsProdImplCopyWith<_$CarsProdImpl> get copyWith =>
      __$$CarsProdImplCopyWithImpl<_$CarsProdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarsProdImplToJson(
      this,
    );
  }
}

abstract class _CarsProd implements CarsProd {
  factory _CarsProd({@JsonKey(name: "Car") required final Car car}) =
      _$CarsProdImpl;

  factory _CarsProd.fromJson(Map<String, dynamic> json) =
      _$CarsProdImpl.fromJson;

  @override
  @JsonKey(name: "Car")
  Car get car;
  @override
  @JsonKey(ignore: true)
  _$$CarsProdImplCopyWith<_$CarsProdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
