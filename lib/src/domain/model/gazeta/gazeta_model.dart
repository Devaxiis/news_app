import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/src/domain/model/news_model/news_model.dart';

part 'gazeta_model.freezed.dart';
part 'gazeta_model.g.dart';

@freezed
class Gazeta with _$Gazeta{
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory Gazeta({
    required String? status,
    required int? totalResults,
    required NewsModel articles,

})=_Gazeta;

  factory Gazeta.fromJson(Map<String,Object?> json)=>_$GazetaFromJson(json);
}


final gazeta = {
  "status": "ok",
  "totalResults": 12451,
  "articles":[]
};