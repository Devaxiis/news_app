
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sys_model.freezed.dart';
part 'sys_model.g.dart';

@freezed
class SysModel with _$SysModel{
  @JsonSerializable(explicitToJson: true)

  const factory SysModel({
    required num type,
    required num id,
    required String country,
    required num sunrise,
    required num sunset,
  })= _SysModel;


  factory SysModel.fromJson(Map<String,Object?> json) => _$SysModelFromJson(json);
}

final jspn ={
  "sys": {
    "type": 2,
    "id": 2075663,
    "country": "IT",
    "sunrise": 1661834187,
    "sunset": 1661882248
  }
};