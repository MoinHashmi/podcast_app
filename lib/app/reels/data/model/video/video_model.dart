import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcast_app/app/reels/data/model/user/user_model.dart';
import 'package:podcast_app/app/reels/domain/entity/video/video.dart';

part 'video_model.freezed.dart';

part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  factory VideoModel({
    required int id,
    required String title,
    required String url,
    @JsonKey(name: 'cdn_url') required String cdnUrl,
    @JsonKey(name: 'thumb_cdn_url') required String thumbCdnUrl,
    @JsonKey(name: 'user_id') required int userId,
    required String status,
    required String slug,
    @JsonKey(name:'encode_status') required String encodeStatus,
    required int priority,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'total_views') required int totalViews,
    @JsonKey(name: 'total_likes') required int totalLikes,
    @JsonKey(name: 'total_comments') required int totalComments,
    @JsonKey(name: 'total_share') required int totalShare,
    @JsonKey(name: 'total_wishlist') required int totalWishlist,
    required int duration,
    @JsonKey(name: 'byte_added_on') DateTime? byteAddedOn,
    @JsonKey(name: 'byte_updated_on') DateTime? byteUpdatedOn,
    @JsonKey(name: 'bunny_stream_video_id') required String bunnyStreamVideoId,
    String? language,
    @JsonKey(name: 'bunny_encoding_status') required int bunnyEncodingStatus,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'video_height') required int videoHeight,
    @JsonKey(name: 'video_width') required int videoWidth,
    required UserModel user,
    @JsonKey(name: 'is_liked') required bool isLiked,
    @JsonKey(name: 'is_wished') required bool isWished,
    @JsonKey(name: 'is_follow') required bool isFollow,
    @JsonKey(name: 'video_aspect_ratio') required String videoAspectRatio,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);

  Video toEntity() => Video(
      id: id,
      title: title,
      url: url,
      cdnUrl: cdnUrl,
      thumbCdnUrl: thumbCdnUrl,
      userId: userId,
      status: status,
      slug: slug,
      encodeStatus: encodeStatus,
      priority: priority,
      categoryId: categoryId,
      totalViews: totalViews,
      totalLikes: totalLikes,
      totalComments: totalComments,
      totalShare: totalShare,
      totalWishlist: totalWishlist,
      duration: duration,
      byteAddedOn: byteAddedOn,
      byteUpdatedOn: byteUpdatedOn,
      bunnyStreamVideoId: bunnyStreamVideoId,
      bunnyEncodingStatus: bunnyEncodingStatus,
      videoHeight: videoHeight,
      videoWidth: videoWidth,
      user: user.toEntity(),
      isLiked: isLiked,
      isWished: isWished,
      isFollow: isFollow,
      videoAspectRatio: videoAspectRatio);
}
