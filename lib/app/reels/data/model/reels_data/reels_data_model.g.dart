// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reels_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReelsDataModelImpl _$$ReelsDataModelImplFromJson(Map<String, dynamic> json) =>
    _$ReelsDataModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      metaData:
          MetaDataModel.fromJson(json['meta_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReelsDataModelImplToJson(
        _$ReelsDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta_data': instance.metaData,
    };
