// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoModelImpl _$$VideoModelImplFromJson(Map<String, dynamic> json) =>
    _$VideoModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      url: json['url'] as String,
      cdnUrl: json['cdn_url'] as String,
      thumbCdnUrl: json['thumb_cdn_url'] as String,
      userId: (json['user_id'] as num).toInt(),
      status: json['status'] as String,
      slug: json['slug'] as String,
      encodeStatus: json['encode_status'] as String,
      priority: (json['priority'] as num).toInt(),
      categoryId: (json['category_id'] as num).toInt(),
      totalViews: (json['total_views'] as num).toInt(),
      totalLikes: (json['total_likes'] as num).toInt(),
      totalComments: (json['total_comments'] as num).toInt(),
      totalShare: (json['total_share'] as num).toInt(),
      totalWishlist: (json['total_wishlist'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      byteAddedOn: json['byte_added_on'] == null
          ? null
          : DateTime.parse(json['byte_added_on'] as String),
      byteUpdatedOn: json['byte_updated_on'] == null
          ? null
          : DateTime.parse(json['byte_updated_on'] as String),
      bunnyStreamVideoId: json['bunny_stream_video_id'] as String,
      language: json['language'] as String?,
      bunnyEncodingStatus: (json['bunny_encoding_status'] as num).toInt(),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      videoHeight: (json['video_height'] as num).toInt(),
      videoWidth: (json['video_width'] as num).toInt(),
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      isLiked: json['is_liked'] as bool,
      isWished: json['is_wished'] as bool,
      isFollow: json['is_follow'] as bool,
      videoAspectRatio: json['video_aspect_ratio'] as String,
    );

Map<String, dynamic> _$$VideoModelImplToJson(_$VideoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'cdn_url': instance.cdnUrl,
      'thumb_cdn_url': instance.thumbCdnUrl,
      'user_id': instance.userId,
      'status': instance.status,
      'slug': instance.slug,
      'encode_status': instance.encodeStatus,
      'priority': instance.priority,
      'category_id': instance.categoryId,
      'total_views': instance.totalViews,
      'total_likes': instance.totalLikes,
      'total_comments': instance.totalComments,
      'total_share': instance.totalShare,
      'total_wishlist': instance.totalWishlist,
      'duration': instance.duration,
      'byte_added_on': instance.byteAddedOn?.toIso8601String(),
      'byte_updated_on': instance.byteUpdatedOn?.toIso8601String(),
      'bunny_stream_video_id': instance.bunnyStreamVideoId,
      'language': instance.language,
      'bunny_encoding_status': instance.bunnyEncodingStatus,
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'video_height': instance.videoHeight,
      'video_width': instance.videoWidth,
      'user': instance.user,
      'is_liked': instance.isLiked,
      'is_wished': instance.isWished,
      'is_follow': instance.isFollow,
      'video_aspect_ratio': instance.videoAspectRatio,
    };
