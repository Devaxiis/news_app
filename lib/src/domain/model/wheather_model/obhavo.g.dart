// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'obhavo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ObhavoModelImpl _$$ObhavoModelImplFromJson(Map<String, dynamic> json) =>
    _$ObhavoModelImpl(
      coord: CoordModel.fromJson(json['coord'] as Map<String, dynamic>),
      weather: WhatherModel.fromJson(json['weather'] as Map<String, dynamic>),
      base: json['base'] as String,
      main: MainModel.fromJson(json['main'] as Map<String, dynamic>),
      visibility: json['visibility'] as num,
      wind: WindModel.fromJson(json['wind'] as Map<String, dynamic>),
      rain: json['rain'] as Map<String, dynamic>,
      clouds: CloudsModel.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: json['dt'] as num,
      sys: SysModel.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: json['timezone'] as num,
      id: json['id'] as num,
      name: json['name'] as String,
      cod: json['cod'] as num,
    );

Map<String, dynamic> _$$ObhavoModelImplToJson(_$ObhavoModelImpl instance) =>
    <String, dynamic>{
      'coord': instance.coord.toJson(),
      'weather': instance.weather.toJson(),
      'base': instance.base,
      'main': instance.main.toJson(),
      'visibility': instance.visibility,
      'wind': instance.wind.toJson(),
      'rain': instance.rain,
      'clouds': instance.clouds.toJson(),
      'dt': instance.dt,
      'sys': instance.sys.toJson(),
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };
