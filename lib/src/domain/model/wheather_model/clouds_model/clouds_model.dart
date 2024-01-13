
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'clouds_model.freezed.dart';
part 'clouds_model.g.dart';

@freezed
class CloudsModel with _$CloudsModel{
  @JsonSerializable(explicitToJson: true)

  const factory CloudsModel({
    required num all,
  })= _CloudsModel;


  factory CloudsModel.fromJson(Map<String,Object?> json) => _$CloudsModelFromJson(json);
}

final json = {
  "clouds": {
    "all": 100
  }
};