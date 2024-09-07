import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcast_app/app/reels/data/model/meta_data/meta_data_model.dart';
import 'package:podcast_app/app/reels/data/model/video/video_model.dart';
import 'package:podcast_app/app/reels/domain/entity/reels_data/reels_data.dart';

part 'reels_data_model.freezed.dart';
part 'reels_data_model.g.dart';

@freezed
class ReelsDataModel with _$ReelsDataModel {
  factory ReelsDataModel({
    required List<VideoModel> data,
    @JsonKey(name: 'meta_data') required MetaDataModel metaData,
  }) = _ReelsDataModel;

  factory ReelsDataModel.fromJson(Map<String, dynamic> json) => _$ReelsDataModelFromJson(json);

  static ReelsDataModel fromJsonForIsolate(dynamic json) => _$ReelsDataModelFromJson(json);

  ReelsData toEntity() => ReelsData(
      data: data.map((e) => e.toEntity()).toList(),
      metaData: metaData.toEntity()
  );
}