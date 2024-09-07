import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcast_app/app/reels/data/model/reels_data/reels_data_model.dart';
import 'package:podcast_app/app/reels/domain/entity/meta_data/meta_data.dart';
import 'package:podcast_app/app/reels/domain/entity/video/video.dart';

part 'reels_data.freezed.dart';

@freezed
class ReelsData with _$ReelsData {
  factory ReelsData({
    required List<Video> data,
    required MetaData metaData,
  }) = _ReelsData;

  ReelsDataModel toModel() => ReelsDataModel(
      data: data.map((e) => e.toModel()).toList(),
      metaData: metaData.toModel());
}
