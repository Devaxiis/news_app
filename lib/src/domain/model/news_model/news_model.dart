import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/src/domain/model/source_model/source_model.dart';


part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel{
  @JsonSerializable(explicitToJson: true)

  const factory NewsModel({
    required SourceModel source,
    required String? author,
    required String? title,
    required String? description,
    required String? url,
    required String? urlToImage,
    required String? publishedAt,
    required String? content,

})= _NewsModel;


  factory NewsModel.fromJson(Map<String,Object?> json) => _$NewsModelFromJson(json);
}


