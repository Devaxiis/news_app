// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lat_lang.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LatLangImpl _$$LatLangImplFromJson(Map<String, dynamic> json) =>
    _$LatLangImpl(
      name: json['name'] as String,
      local_names: json['local_names'] as Map<String, dynamic>,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      country: json['country'] as String,
    );

Map<String, dynamic> _$$LatLangImplToJson(_$LatLangImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'local_names': instance.local_names,
      'lat': instance.lat,
      'lon': instance.lon,
      'country': instance.country,
    };
