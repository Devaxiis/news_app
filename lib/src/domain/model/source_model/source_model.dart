import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_model.freezed.dart';
part 'source_model.g.dart';

@freezed
class SourceModel with _$SourceModel{
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory SourceModel({
    required String? id,
    required String? name,
})=_SourceModel;

  factory SourceModel.fromJson(Map<String,Object?> json)=>_$SourceModelFromJson(json);
}


final ss = {
  "source": {
    "id": null,
    "name": "Investing.com"
  },
};