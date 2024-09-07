// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reels_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReelsApiResponseModelImpl _$$ReelsApiResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReelsApiResponseModelImpl(
      statusCode: (json['statusCode'] as num).toInt(),
      message: json['message'] as String,
      data: ReelsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReelsApiResponseModelImplToJson(
        _$ReelsApiResponseModelImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
