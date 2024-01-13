import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/src/domain/model/wheather_model/clouds_model/clouds_model.dart';
import 'package:news_app/src/domain/model/wheather_model/coord_model/coord_model.dart';
import 'package:news_app/src/domain/model/wheather_model/main_model/main_model.dart';
import 'package:news_app/src/domain/model/wheather_model/sys_model/sys_model.dart';
import 'package:news_app/src/domain/model/wheather_model/wind_model/wind_model.dart';
import 'name_model/whather_model.dart';
import 'package:json_annotation/json_annotation.dart';



part 'obhavo.freezed.dart';
part 'obhavo.g.dart';

@freezed
class ObhavoModel with _$ObhavoModel{
  @JsonSerializable(explicitToJson: true)

  const factory ObhavoModel({
    required CoordModel coord,
    required WhatherModel weather,
    required String base,
    required MainModel main,
    required num visibility,
    required WindModel wind,
    required Map rain,
    required CloudsModel clouds,
    required num dt,
    required SysModel sys,
    required num timezone,
    required num id,
    required String name,
    required num cod,
  })= _ObhavoModel;


  factory ObhavoModel.fromJson(Map<String,Object?> json) => _$ObhavoModelFromJson(json);
}

final json = {

  {
    "coord": {
      "lon": 10.99,
      "lat": 44.34
    },
    "weather": [
      {
        "id": 501,
        "main": "Rain",
        "description": "moderate rain",
        "icon": "10d"
      }
    ],
    "base": "stations",
    "main": {
      "temp": 298.48,
      "feels_like": 298.74,
      "temp_min": 297.56,
      "temp_max": 300.05,
      "pressure": 1015,
      "humidity": 64,
      "sea_level": 1015,
      "grnd_level": 933
    },
    "visibility": 10000,
    "wind": {
      "speed": 0.62,
      "deg": 349,
      "gust": 1.18
    },
    "rain": {
      "1h": 3.16
    },
    "clouds": {
      "all": 100
    },
    "dt": 1661870592,
    "sys": {
      "type": 2,
      "id": 2075663,
      "country": "IT",
      "sunrise": 1661834187,
      "sunset": 1661882248
    },
    "timezone": 7200,
    "id": 3163858,
    "name": "Zocca",
    "cod": 200
  }


};