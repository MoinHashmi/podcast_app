// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: (json['user_id'] as num).toInt(),
      fullName: json['fullname'] as String,
      userName: json['username'] as String,
      profilePicture: json['profile_picture'] as String,
      profilePictureCdn: json['profile_picture_cdn'] as String?,
      designation: json['designation'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'fullname': instance.fullName,
      'username': instance.userName,
      'profile_picture': instance.profilePicture,
      'profile_picture_cdn': instance.profilePictureCdn,
      'designation': instance.designation,
    };
