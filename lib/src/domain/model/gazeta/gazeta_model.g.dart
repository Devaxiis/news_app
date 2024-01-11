// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gazeta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GazetaImpl _$$GazetaImplFromJson(Map<String, dynamic> json) => _$GazetaImpl(
      status: json['status'] as String?,
      totalResults: json['total_results'] as int?,
      articles: NewsModel.fromJson(json['articles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GazetaImplToJson(_$GazetaImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total_results': instance.totalResults,
      'articles': instance.articles.toJson(),
    };
