

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wind_model.freezed.dart';
part 'wind_model.g.dart';

@freezed
class WindModel with _$WindModel{
  @JsonSerializable(explicitToJson: true)

  const factory WindModel({
    required num speed,
    required num deg,
    required num gust,
  })= _WindModel;


  factory WindModel.fromJson(Map<String,Object?> json) => _$WindModelFromJson(json);
}


final json = {
  "wind": {
    "speed": 0.62,
    "deg": 349,
    "gust": 1.18
  }
};