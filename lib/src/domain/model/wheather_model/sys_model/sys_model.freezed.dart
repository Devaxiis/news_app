// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sys_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SysModel _$SysModelFromJson(Map<String, dynamic> json) {
  return _SysModel.fromJson(json);
}

/// @nodoc
mixin _$SysModel {
  num get type => throw _privateConstructorUsedError;
  num get id => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  num get sunrise => throw _privateConstructorUsedError;
  num get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SysModelCopyWith<SysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysModelCopyWith<$Res> {
  factory $SysModelCopyWith(SysModel value, $Res Function(SysModel) then) =
      _$SysModelCopyWithImpl<$Res, SysModel>;
  @useResult
  $Res call({num type, num id, String country, num sunrise, num sunset});
}

/// @nodoc
class _$SysModelCopyWithImpl<$Res, $Val extends SysModel>
    implements $SysModelCopyWith<$Res> {
  _$SysModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as num,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as num,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SysModelImplCopyWith<$Res>
    implements $SysModelCopyWith<$Res> {
  factory _$$SysModelImplCopyWith(
          _$SysModelImpl value, $Res Function(_$SysModelImpl) then) =
      __$$SysModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num type, num id, String country, num sunrise, num sunset});
}

/// @nodoc
class __$$SysModelImplCopyWithImpl<$Res>
    extends _$SysModelCopyWithImpl<$Res, _$SysModelImpl>
    implements _$$SysModelImplCopyWith<$Res> {
  __$$SysModelImplCopyWithImpl(
      _$SysModelImpl _value, $Res Function(_$SysModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$SysModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as num,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as num,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SysModelImpl implements _SysModel {
  const _$SysModelImpl(
      {required this.type,
      required this.id,
      required this.country,
      required this.sunrise,
      required this.sunset});

  factory _$SysModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SysModelImplFromJson(json);

  @override
  final num type;
  @override
  final num id;
  @override
  final String country;
  @override
  final num sunrise;
  @override
  final num sunset;

  @override
  String toString() {
    return 'SysModel(type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SysModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, id, country, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SysModelImplCopyWith<_$SysModelImpl> get copyWith =>
      __$$SysModelImplCopyWithImpl<_$SysModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SysModelImplToJson(
      this,
    );
  }
}

abstract class _SysModel implements SysModel {
  const factory _SysModel(
      {required final num type,
      required final num id,
      required final String country,
      required final num sunrise,
      required final num sunset}) = _$SysModelImpl;

  factory _SysModel.fromJson(Map<String, dynamic> json) =
      _$SysModelImpl.fromJson;

  @override
  num get type;
  @override
  num get id;
  @override
  String get country;
  @override
  num get sunrise;
  @override
  num get sunset;
  @override
  @JsonKey(ignore: true)
  _$$SysModelImplCopyWith<_$SysModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
