// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SysModelImpl _$$SysModelImplFromJson(Map<String, dynamic> json) =>
    _$SysModelImpl(
      type: json['type'] as num,
      id: json['id'] as num,
      country: json['country'] as String,
      sunrise: json['sunrise'] as num,
      sunset: json['sunset'] as num,
    );

Map<String, dynamic> _$$SysModelImplToJson(_$SysModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
