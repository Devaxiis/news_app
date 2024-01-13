
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'coord_model.freezed.dart';
part 'coord_model.g.dart';

@freezed
class CoordModel with _$CoordModel{
  @JsonSerializable(explicitToJson: true)

  const factory CoordModel({
    required num lat,
    required num lang,
  })= _CoordModel;


  factory CoordModel.fromJson(Map<String,Object?> json) => _$CoordModelFromJson(json);
}


final json={
  "coord": {
    "lon": 10.99,
    "lat": 44.34
  }
};