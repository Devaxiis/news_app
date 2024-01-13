// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clouds_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CloudsModel _$CloudsModelFromJson(Map<String, dynamic> json) {
  return _CloudsModel.fromJson(json);
}

/// @nodoc
mixin _$CloudsModel {
  num get all => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudsModelCopyWith<CloudsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudsModelCopyWith<$Res> {
  factory $CloudsModelCopyWith(
          CloudsModel value, $Res Function(CloudsModel) then) =
      _$CloudsModelCopyWithImpl<$Res, CloudsModel>;
  @useResult
  $Res call({num all});
}

/// @nodoc
class _$CloudsModelCopyWithImpl<$Res, $Val extends CloudsModel>
    implements $CloudsModelCopyWith<$Res> {
  _$CloudsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_value.copyWith(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloudsModelImplCopyWith<$Res>
    implements $CloudsModelCopyWith<$Res> {
  factory _$$CloudsModelImplCopyWith(
          _$CloudsModelImpl value, $Res Function(_$CloudsModelImpl) then) =
      __$$CloudsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num all});
}

/// @nodoc
class __$$CloudsModelImplCopyWithImpl<$Res>
    extends _$CloudsModelCopyWithImpl<$Res, _$CloudsModelImpl>
    implements _$$CloudsModelImplCopyWith<$Res> {
  __$$CloudsModelImplCopyWithImpl(
      _$CloudsModelImpl _value, $Res Function(_$CloudsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_$CloudsModelImpl(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CloudsModelImpl implements _CloudsModel {
  const _$CloudsModelImpl({required this.all});

  factory _$CloudsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloudsModelImplFromJson(json);

  @override
  final num all;

  @override
  String toString() {
    return 'CloudsModel(all: $all)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudsModelImpl &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, all);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudsModelImplCopyWith<_$CloudsModelImpl> get copyWith =>
      __$$CloudsModelImplCopyWithImpl<_$CloudsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloudsModelImplToJson(
      this,
    );
  }
}

abstract class _CloudsModel implements CloudsModel {
  const factory _CloudsModel({required final num all}) = _$CloudsModelImpl;

  factory _CloudsModel.fromJson(Map<String, dynamic> json) =
      _$CloudsModelImpl.fromJson;

  @override
  num get all;
  @override
  @JsonKey(ignore: true)
  _$$CloudsModelImplCopyWith<_$CloudsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
