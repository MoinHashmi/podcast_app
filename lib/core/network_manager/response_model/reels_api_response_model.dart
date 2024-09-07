
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcast_app/app/reels/data/model/reels_data/reels_data_model.dart';

part 'reels_api_response_model.freezed.dart';
part 'reels_api_response_model.g.dart';

@freezed
class ReelsApiResponseModel with _$ReelsApiResponseModel {
  factory ReelsApiResponseModel({
    required int statusCode,
    required String message,
    required ReelsDataModel data,
  }) = _ReelsApiResponseModel;

  factory ReelsApiResponseModel.fromJson(Map<String, dynamic> json) => _$ReelsApiResponseModelFromJson(json);

  static ReelsApiResponseModel fromJsonForIsolate(dynamic json) => _$ReelsApiResponseModelFromJson(json);
}