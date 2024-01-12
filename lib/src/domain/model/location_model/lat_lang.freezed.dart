// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lat_lang.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatLang _$LatLangFromJson(Map<String, dynamic> json) {
  return _LatLang.fromJson(json);
}

/// @nodoc
mixin _$LatLang {
  String get name => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get local_names => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLangCopyWith<LatLang> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLangCopyWith<$Res> {
  factory $LatLangCopyWith(LatLang value, $Res Function(LatLang) then) =
      _$LatLangCopyWithImpl<$Res, LatLang>;
  @useResult
  $Res call(
      {String name,
      Map<dynamic, dynamic> local_names,
      double lat,
      double lon,
      String country});
}

/// @nodoc
class _$LatLangCopyWithImpl<$Res, $Val extends LatLang>
    implements $LatLangCopyWith<$Res> {
  _$LatLangCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? local_names = null,
    Object? lat = null,
    Object? lon = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      local_names: null == local_names
          ? _value.local_names
          : local_names // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LatLangImplCopyWith<$Res> implements $LatLangCopyWith<$Res> {
  factory _$$LatLangImplCopyWith(
          _$LatLangImpl value, $Res Function(_$LatLangImpl) then) =
      __$$LatLangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Map<dynamic, dynamic> local_names,
      double lat,
      double lon,
      String country});
}

/// @nodoc
class __$$LatLangImplCopyWithImpl<$Res>
    extends _$LatLangCopyWithImpl<$Res, _$LatLangImpl>
    implements _$$LatLangImplCopyWith<$Res> {
  __$$LatLangImplCopyWithImpl(
      _$LatLangImpl _value, $Res Function(_$LatLangImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? local_names = null,
    Object? lat = null,
    Object? lon = null,
    Object? country = null,
  }) {
    return _then(_$LatLangImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      local_names: null == local_names
          ? _value._local_names
          : local_names // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LatLangImpl implements _LatLang {
  const _$LatLangImpl(
      {required this.name,
      required final Map<dynamic, dynamic> local_names,
      required this.lat,
      required this.lon,
      required this.country})
      : _local_names = local_names;

  factory _$LatLangImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatLangImplFromJson(json);

  @override
  final String name;
  final Map<dynamic, dynamic> _local_names;
  @override
  Map<dynamic, dynamic> get local_names {
    if (_local_names is EqualUnmodifiableMapView) return _local_names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_local_names);
  }

  @override
  final double lat;
  @override
  final double lon;
  @override
  final String country;

  @override
  String toString() {
    return 'LatLang(name: $name, local_names: $local_names, lat: $lat, lon: $lon, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatLangImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._local_names, _local_names) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_local_names), lat, lon, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LatLangImplCopyWith<_$LatLangImpl> get copyWith =>
      __$$LatLangImplCopyWithImpl<_$LatLangImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatLangImplToJson(
      this,
    );
  }
}

abstract class _LatLang implements LatLang {
  const factory _LatLang(
      {required final String name,
      required final Map<dynamic, dynamic> local_names,
      required final double lat,
      required final double lon,
      required final String country}) = _$LatLangImpl;

  factory _LatLang.fromJson(Map<String, dynamic> json) = _$LatLangImpl.fromJson;

  @override
  String get name;
  @override
  Map<dynamic, dynamic> get local_names;
  @override
  double get lat;
  @override
  double get lon;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$LatLangImplCopyWith<_$LatLangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
