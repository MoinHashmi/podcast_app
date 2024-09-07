import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcast_app/app/reels/data/model/meta_data/meta_data_model.dart';

part 'meta_data.freezed.dart';

@freezed
class MetaData with _$MetaData {
  factory MetaData({
    required int total,
    required int page,
    required int limit,
  }) = _MetaData;

  MetaDataModel toModel() =>
      MetaDataModel(total: total, page: page, limit: limit);
}
