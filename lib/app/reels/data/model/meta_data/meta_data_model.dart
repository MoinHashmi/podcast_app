import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcast_app/app/reels/domain/entity/meta_data/meta_data.dart';

part 'meta_data_model.freezed.dart';
part 'meta_data_model.g.dart';

@freezed
class MetaDataModel with _$MetaDataModel {
  factory MetaDataModel({
    required int total,
    required int page,
    required int limit,
  }) = _MetaDataModel;

  factory MetaDataModel.fromJson(Map<String, dynamic> json) => _$MetaDataModelFromJson(json);

  MetaData toEntity() => MetaData(total: total, page: page, limit: limit);
}