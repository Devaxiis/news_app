// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'obhavo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ObhavoModel _$ObhavoModelFromJson(Map<String, dynamic> json) {
  return _ObhavoModel.fromJson(json);
}

/// @nodoc
mixin _$ObhavoModel {
  CoordModel get coord => throw _privateConstructorUsedError;
  WhatherModel get weather => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  MainModel get main => throw _privateConstructorUsedError;
  num get visibility => throw _privateConstructorUsedError;
  WindModel get wind => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get rain => throw _privateConstructorUsedError;
  CloudsModel get clouds => throw _privateConstructorUsedError;
  num get dt => throw _privateConstructorUsedError;
  SysModel get sys => throw _privateConstructorUsedError;
  num get timezone => throw _privateConstructorUsedError;
  num get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  num get cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObhavoModelCopyWith<ObhavoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObhavoModelCopyWith<$Res> {
  factory $ObhavoModelCopyWith(
          ObhavoModel value, $Res Function(ObhavoModel) then) =
      _$ObhavoModelCopyWithImpl<$Res, ObhavoModel>;
  @useResult
  $Res call(
      {CoordModel coord,
      WhatherModel weather,
      String base,
      MainModel main,
      num visibility,
      WindModel wind,
      Map<dynamic, dynamic> rain,
      CloudsModel clouds,
      num dt,
      SysModel sys,
      num timezone,
      num id,
      String name,
      num cod});

  $CoordModelCopyWith<$Res> get coord;
  $WhatherModelCopyWith<$Res> get weather;
  $MainModelCopyWith<$Res> get main;
  $WindModelCopyWith<$Res> get wind;
  $CloudsModelCopyWith<$Res> get clouds;
  $SysModelCopyWith<$Res> get sys;
}

/// @nodoc
class _$ObhavoModelCopyWithImpl<$Res, $Val extends ObhavoModel>
    implements $ObhavoModelCopyWith<$Res> {
  _$ObhavoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? rain = null,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? cod = null,
  }) {
    return _then(_value.copyWith(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordModel,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WhatherModel,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as num,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      rain: null == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsModel,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as num,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysModel,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as num,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordModelCopyWith<$Res> get coord {
    return $CoordModelCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WhatherModelCopyWith<$Res> get weather {
    return $WhatherModelCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MainModelCopyWith<$Res> get main {
    return $MainModelCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindModelCopyWith<$Res> get wind {
    return $WindModelCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudsModelCopyWith<$Res> get clouds {
    return $CloudsModelCopyWith<$Res>(_value.clouds, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SysModelCopyWith<$Res> get sys {
    return $SysModelCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ObhavoModelImplCopyWith<$Res>
    implements $ObhavoModelCopyWith<$Res> {
  factory _$$ObhavoModelImplCopyWith(
          _$ObhavoModelImpl value, $Res Function(_$ObhavoModelImpl) then) =
      __$$ObhavoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CoordModel coord,
      WhatherModel weather,
      String base,
      MainModel main,
      num visibility,
      WindModel wind,
      Map<dynamic, dynamic> rain,
      CloudsModel clouds,
      num dt,
      SysModel sys,
      num timezone,
      num id,
      String name,
      num cod});

  @override
  $CoordModelCopyWith<$Res> get coord;
  @override
  $WhatherModelCopyWith<$Res> get weather;
  @override
  $MainModelCopyWith<$Res> get main;
  @override
  $WindModelCopyWith<$Res> get wind;
  @override
  $CloudsModelCopyWith<$Res> get clouds;
  @override
  $SysModelCopyWith<$Res> get sys;
}

/// @nodoc
class __$$ObhavoModelImplCopyWithImpl<$Res>
    extends _$ObhavoModelCopyWithImpl<$Res, _$ObhavoModelImpl>
    implements _$$ObhavoModelImplCopyWith<$Res> {
  __$$ObhavoModelImplCopyWithImpl(
      _$ObhavoModelImpl _value, $Res Function(_$ObhavoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? rain = null,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? cod = null,
  }) {
    return _then(_$ObhavoModelImpl(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordModel,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WhatherModel,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as num,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      rain: null == rain
          ? _value._rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsModel,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as num,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysModel,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as num,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ObhavoModelImpl implements _ObhavoModel {
  const _$ObhavoModelImpl(
      {required this.coord,
      required this.weather,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind,
      required final Map<dynamic, dynamic> rain,
      required this.clouds,
      required this.dt,
      required this.sys,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod})
      : _rain = rain;

  factory _$ObhavoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObhavoModelImplFromJson(json);

  @override
  final CoordModel coord;
  @override
  final WhatherModel weather;
  @override
  final String base;
  @override
  final MainModel main;
  @override
  final num visibility;
  @override
  final WindModel wind;
  final Map<dynamic, dynamic> _rain;
  @override
  Map<dynamic, dynamic> get rain {
    if (_rain is EqualUnmodifiableMapView) return _rain;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rain);
  }

  @override
  final CloudsModel clouds;
  @override
  final num dt;
  @override
  final SysModel sys;
  @override
  final num timezone;
  @override
  final num id;
  @override
  final String name;
  @override
  final num cod;

  @override
  String toString() {
    return 'ObhavoModel(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, rain: $rain, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObhavoModelImpl &&
            (identical(other.coord, coord) || other.coord == coord) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            const DeepCollectionEquality().equals(other._rain, _rain) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cod, cod) || other.cod == cod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coord,
      weather,
      base,
      main,
      visibility,
      wind,
      const DeepCollectionEquality().hash(_rain),
      clouds,
      dt,
      sys,
      timezone,
      id,
      name,
      cod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObhavoModelImplCopyWith<_$ObhavoModelImpl> get copyWith =>
      __$$ObhavoModelImplCopyWithImpl<_$ObhavoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObhavoModelImplToJson(
      this,
    );
  }
}

abstract class _ObhavoModel implements ObhavoModel {
  const factory _ObhavoModel(
      {required final CoordModel coord,
      required final WhatherModel weather,
      required final String base,
      required final MainModel main,
      required final num visibility,
      required final WindModel wind,
      required final Map<dynamic, dynamic> rain,
      required final CloudsModel clouds,
      required final num dt,
      required final SysModel sys,
      required final num timezone,
      required final num id,
      required final String name,
      required final num cod}) = _$ObhavoModelImpl;

  factory _ObhavoModel.fromJson(Map<String, dynamic> json) =
      _$ObhavoModelImpl.fromJson;

  @override
  CoordModel get coord;
  @override
  WhatherModel get weather;
  @override
  String get base;
  @override
  MainModel get main;
  @override
  num get visibility;
  @override
  WindModel get wind;
  @override
  Map<dynamic, dynamic> get rain;
  @override
  CloudsModel get clouds;
  @override
  num get dt;
  @override
  SysModel get sys;
  @override
  num get timezone;
  @override
  num get id;
  @override
  String get name;
  @override
  num get cod;
  @override
  @JsonKey(ignore: true)
  _$$ObhavoModelImplCopyWith<_$ObhavoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
