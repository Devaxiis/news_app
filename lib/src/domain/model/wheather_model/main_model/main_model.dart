
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'main_model.freezed.dart';
part 'main_model.g.dart';

@freezed
class MainModel with _$MainModel{
  @JsonSerializable(explicitToJson: true)

  const factory MainModel({
    required double temp,
    required double feels_like,
    required double temp_min,
    required double temp_max,
    required num pressure,
    required num humidity,
    required num sea_level,
    required num grnd_level,
  })= _MainModel;


  factory MainModel.fromJson(Map<String,Object?> json) => _$MainModelFromJson(json);
}

final jso = {
  "main": {
    "temp": 298.48,
    "feels_like": 298.74,
    "temp_min": 297.56,
    "temp_max": 300.05,
    "pressure": 1015,
    "humidity": 64,
    "sea_level": 1015,
    "grnd_level": 933
  }
};