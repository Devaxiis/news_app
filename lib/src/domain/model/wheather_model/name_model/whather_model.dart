
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'whather_model.freezed.dart';
part 'whather_model.g.dart';

@freezed
class WhatherModel with _$WhatherModel{
  @JsonSerializable(explicitToJson: true)
  const factory WhatherModel({
    required int id,
    required String main,
    required String description,
    required String icon,
  })= _WhatherModel;


  factory WhatherModel.fromJson(Map<String,Object?> json) => _$WhatherModelFromJson(json);
}


final json = {
  "weather": [
    {
      "id": 501,
      "main": "Rain",
      "description": "moderate rain",
      "icon": "10d"
    }
  ]
};