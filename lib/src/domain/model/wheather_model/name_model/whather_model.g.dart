// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WhatherModelImpl _$$WhatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WhatherModelImpl(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WhatherModelImplToJson(_$WhatherModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
