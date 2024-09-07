import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcast_app/app/reels/data/model/video/video_model.dart';
import 'package:podcast_app/app/reels/domain/entity/user/user.dart';

part 'video.freezed.dart';

@freezed
class Video with _$Video {
  factory Video({
    required int id,
    required String title,
    required String url,
    required String cdnUrl,
    required String thumbCdnUrl,
    required int userId,
    required String status,
    required String slug,
    required String encodeStatus,
    required int priority,
    required int categoryId,
    required int totalViews,
    required int totalLikes,
    required int totalComments,
    required int totalShare,
    required int totalWishlist,
    required int duration,
    DateTime? byteAddedOn,
    DateTime? byteUpdatedOn,
    required String bunnyStreamVideoId,
    String? language,
    required int bunnyEncodingStatus,
    DateTime? deletedAt,
    required int videoHeight,
    required int videoWidth,
    required User user,
    required bool isLiked,
    required bool isWished,
    required bool isFollow,
    required String videoAspectRatio,
  }) = _Video;

  VideoModel toModel() {
    return VideoModel(
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
        user: user.toModel(),
        isLiked: isLiked,
        isWished: isWished,
        isFollow: isFollow,
        videoAspectRatio: videoAspectRatio
    );
  }
}