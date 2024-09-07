// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return _VideoModel.fromJson(json);
}

/// @nodoc
mixin _$VideoModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'cdn_url')
  String get cdnUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumb_cdn_url')
  String get thumbCdnUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'encode_status')
  String get encodeStatus => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_views')
  int get totalViews => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes')
  int get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_comments')
  int get totalComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_share')
  int get totalShare => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_wishlist')
  int get totalWishlist => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'byte_added_on')
  DateTime? get byteAddedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'byte_updated_on')
  DateTime? get byteUpdatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'bunny_stream_video_id')
  String get bunnyStreamVideoId => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'bunny_encoding_status')
  int get bunnyEncodingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_height')
  int get videoHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_width')
  int get videoWidth => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_liked')
  bool get isLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_wished')
  bool get isWished => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_follow')
  bool get isFollow => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_aspect_ratio')
  String get videoAspectRatio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoModelCopyWith<VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res, VideoModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String url,
      @JsonKey(name: 'cdn_url') String cdnUrl,
      @JsonKey(name: 'thumb_cdn_url') String thumbCdnUrl,
      @JsonKey(name: 'user_id') int userId,
      String status,
      String slug,
      @JsonKey(name: 'encode_status') String encodeStatus,
      int priority,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'total_views') int totalViews,
      @JsonKey(name: 'total_likes') int totalLikes,
      @JsonKey(name: 'total_comments') int totalComments,
      @JsonKey(name: 'total_share') int totalShare,
      @JsonKey(name: 'total_wishlist') int totalWishlist,
      int duration,
      @JsonKey(name: 'byte_added_on') DateTime? byteAddedOn,
      @JsonKey(name: 'byte_updated_on') DateTime? byteUpdatedOn,
      @JsonKey(name: 'bunny_stream_video_id') String bunnyStreamVideoId,
      String? language,
      @JsonKey(name: 'bunny_encoding_status') int bunnyEncodingStatus,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'video_height') int videoHeight,
      @JsonKey(name: 'video_width') int videoWidth,
      UserModel user,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'is_wished') bool isWished,
      @JsonKey(name: 'is_follow') bool isFollow,
      @JsonKey(name: 'video_aspect_ratio') String videoAspectRatio});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res, $Val extends VideoModel>
    implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? cdnUrl = null,
    Object? thumbCdnUrl = null,
    Object? userId = null,
    Object? status = null,
    Object? slug = null,
    Object? encodeStatus = null,
    Object? priority = null,
    Object? categoryId = null,
    Object? totalViews = null,
    Object? totalLikes = null,
    Object? totalComments = null,
    Object? totalShare = null,
    Object? totalWishlist = null,
    Object? duration = null,
    Object? byteAddedOn = freezed,
    Object? byteUpdatedOn = freezed,
    Object? bunnyStreamVideoId = null,
    Object? language = freezed,
    Object? bunnyEncodingStatus = null,
    Object? deletedAt = freezed,
    Object? videoHeight = null,
    Object? videoWidth = null,
    Object? user = null,
    Object? isLiked = null,
    Object? isWished = null,
    Object? isFollow = null,
    Object? videoAspectRatio = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      cdnUrl: null == cdnUrl
          ? _value.cdnUrl
          : cdnUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbCdnUrl: null == thumbCdnUrl
          ? _value.thumbCdnUrl
          : thumbCdnUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      encodeStatus: null == encodeStatus
          ? _value.encodeStatus
          : encodeStatus // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      totalViews: null == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int,
      totalLikes: null == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int,
      totalComments: null == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int,
      totalShare: null == totalShare
          ? _value.totalShare
          : totalShare // ignore: cast_nullable_to_non_nullable
              as int,
      totalWishlist: null == totalWishlist
          ? _value.totalWishlist
          : totalWishlist // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      byteAddedOn: freezed == byteAddedOn
          ? _value.byteAddedOn
          : byteAddedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      byteUpdatedOn: freezed == byteUpdatedOn
          ? _value.byteUpdatedOn
          : byteUpdatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bunnyStreamVideoId: null == bunnyStreamVideoId
          ? _value.bunnyStreamVideoId
          : bunnyStreamVideoId // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyEncodingStatus: null == bunnyEncodingStatus
          ? _value.bunnyEncodingStatus
          : bunnyEncodingStatus // ignore: cast_nullable_to_non_nullable
              as int,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      videoHeight: null == videoHeight
          ? _value.videoHeight
          : videoHeight // ignore: cast_nullable_to_non_nullable
              as int,
      videoWidth: null == videoWidth
          ? _value.videoWidth
          : videoWidth // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isWished: null == isWished
          ? _value.isWished
          : isWished // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
      videoAspectRatio: null == videoAspectRatio
          ? _value.videoAspectRatio
          : videoAspectRatio // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoModelImplCopyWith<$Res>
    implements $VideoModelCopyWith<$Res> {
  factory _$$VideoModelImplCopyWith(
          _$VideoModelImpl value, $Res Function(_$VideoModelImpl) then) =
      __$$VideoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String url,
      @JsonKey(name: 'cdn_url') String cdnUrl,
      @JsonKey(name: 'thumb_cdn_url') String thumbCdnUrl,
      @JsonKey(name: 'user_id') int userId,
      String status,
      String slug,
      @JsonKey(name: 'encode_status') String encodeStatus,
      int priority,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'total_views') int totalViews,
      @JsonKey(name: 'total_likes') int totalLikes,
      @JsonKey(name: 'total_comments') int totalComments,
      @JsonKey(name: 'total_share') int totalShare,
      @JsonKey(name: 'total_wishlist') int totalWishlist,
      int duration,
      @JsonKey(name: 'byte_added_on') DateTime? byteAddedOn,
      @JsonKey(name: 'byte_updated_on') DateTime? byteUpdatedOn,
      @JsonKey(name: 'bunny_stream_video_id') String bunnyStreamVideoId,
      String? language,
      @JsonKey(name: 'bunny_encoding_status') int bunnyEncodingStatus,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'video_height') int videoHeight,
      @JsonKey(name: 'video_width') int videoWidth,
      UserModel user,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'is_wished') bool isWished,
      @JsonKey(name: 'is_follow') bool isFollow,
      @JsonKey(name: 'video_aspect_ratio') String videoAspectRatio});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$VideoModelImplCopyWithImpl<$Res>
    extends _$VideoModelCopyWithImpl<$Res, _$VideoModelImpl>
    implements _$$VideoModelImplCopyWith<$Res> {
  __$$VideoModelImplCopyWithImpl(
      _$VideoModelImpl _value, $Res Function(_$VideoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? cdnUrl = null,
    Object? thumbCdnUrl = null,
    Object? userId = null,
    Object? status = null,
    Object? slug = null,
    Object? encodeStatus = null,
    Object? priority = null,
    Object? categoryId = null,
    Object? totalViews = null,
    Object? totalLikes = null,
    Object? totalComments = null,
    Object? totalShare = null,
    Object? totalWishlist = null,
    Object? duration = null,
    Object? byteAddedOn = freezed,
    Object? byteUpdatedOn = freezed,
    Object? bunnyStreamVideoId = null,
    Object? language = freezed,
    Object? bunnyEncodingStatus = null,
    Object? deletedAt = freezed,
    Object? videoHeight = null,
    Object? videoWidth = null,
    Object? user = null,
    Object? isLiked = null,
    Object? isWished = null,
    Object? isFollow = null,
    Object? videoAspectRatio = null,
  }) {
    return _then(_$VideoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      cdnUrl: null == cdnUrl
          ? _value.cdnUrl
          : cdnUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbCdnUrl: null == thumbCdnUrl
          ? _value.thumbCdnUrl
          : thumbCdnUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      encodeStatus: null == encodeStatus
          ? _value.encodeStatus
          : encodeStatus // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      totalViews: null == totalViews
          ? _value.totalViews
          : totalViews // ignore: cast_nullable_to_non_nullable
              as int,
      totalLikes: null == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int,
      totalComments: null == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int,
      totalShare: null == totalShare
          ? _value.totalShare
          : totalShare // ignore: cast_nullable_to_non_nullable
              as int,
      totalWishlist: null == totalWishlist
          ? _value.totalWishlist
          : totalWishlist // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      byteAddedOn: freezed == byteAddedOn
          ? _value.byteAddedOn
          : byteAddedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      byteUpdatedOn: freezed == byteUpdatedOn
          ? _value.byteUpdatedOn
          : byteUpdatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bunnyStreamVideoId: null == bunnyStreamVideoId
          ? _value.bunnyStreamVideoId
          : bunnyStreamVideoId // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      bunnyEncodingStatus: null == bunnyEncodingStatus
          ? _value.bunnyEncodingStatus
          : bunnyEncodingStatus // ignore: cast_nullable_to_non_nullable
              as int,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      videoHeight: null == videoHeight
          ? _value.videoHeight
          : videoHeight // ignore: cast_nullable_to_non_nullable
              as int,
      videoWidth: null == videoWidth
          ? _value.videoWidth
          : videoWidth // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isWished: null == isWished
          ? _value.isWished
          : isWished // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollow: null == isFollow
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
      videoAspectRatio: null == videoAspectRatio
          ? _value.videoAspectRatio
          : videoAspectRatio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoModelImpl implements _VideoModel {
  _$VideoModelImpl(
      {required this.id,
      required this.title,
      required this.url,
      @JsonKey(name: 'cdn_url') required this.cdnUrl,
      @JsonKey(name: 'thumb_cdn_url') required this.thumbCdnUrl,
      @JsonKey(name: 'user_id') required this.userId,
      required this.status,
      required this.slug,
      @JsonKey(name: 'encode_status') required this.encodeStatus,
      required this.priority,
      @JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(name: 'total_views') required this.totalViews,
      @JsonKey(name: 'total_likes') required this.totalLikes,
      @JsonKey(name: 'total_comments') required this.totalComments,
      @JsonKey(name: 'total_share') required this.totalShare,
      @JsonKey(name: 'total_wishlist') required this.totalWishlist,
      required this.duration,
      @JsonKey(name: 'byte_added_on') this.byteAddedOn,
      @JsonKey(name: 'byte_updated_on') this.byteUpdatedOn,
      @JsonKey(name: 'bunny_stream_video_id') required this.bunnyStreamVideoId,
      this.language,
      @JsonKey(name: 'bunny_encoding_status') required this.bunnyEncodingStatus,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'video_height') required this.videoHeight,
      @JsonKey(name: 'video_width') required this.videoWidth,
      required this.user,
      @JsonKey(name: 'is_liked') required this.isLiked,
      @JsonKey(name: 'is_wished') required this.isWished,
      @JsonKey(name: 'is_follow') required this.isFollow,
      @JsonKey(name: 'video_aspect_ratio') required this.videoAspectRatio});

  factory _$VideoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String url;
  @override
  @JsonKey(name: 'cdn_url')
  final String cdnUrl;
  @override
  @JsonKey(name: 'thumb_cdn_url')
  final String thumbCdnUrl;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String status;
  @override
  final String slug;
  @override
  @JsonKey(name: 'encode_status')
  final String encodeStatus;
  @override
  final int priority;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(name: 'total_views')
  final int totalViews;
  @override
  @JsonKey(name: 'total_likes')
  final int totalLikes;
  @override
  @JsonKey(name: 'total_comments')
  final int totalComments;
  @override
  @JsonKey(name: 'total_share')
  final int totalShare;
  @override
  @JsonKey(name: 'total_wishlist')
  final int totalWishlist;
  @override
  final int duration;
  @override
  @JsonKey(name: 'byte_added_on')
  final DateTime? byteAddedOn;
  @override
  @JsonKey(name: 'byte_updated_on')
  final DateTime? byteUpdatedOn;
  @override
  @JsonKey(name: 'bunny_stream_video_id')
  final String bunnyStreamVideoId;
  @override
  final String? language;
  @override
  @JsonKey(name: 'bunny_encoding_status')
  final int bunnyEncodingStatus;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;
  @override
  @JsonKey(name: 'video_height')
  final int videoHeight;
  @override
  @JsonKey(name: 'video_width')
  final int videoWidth;
  @override
  final UserModel user;
  @override
  @JsonKey(name: 'is_liked')
  final bool isLiked;
  @override
  @JsonKey(name: 'is_wished')
  final bool isWished;
  @override
  @JsonKey(name: 'is_follow')
  final bool isFollow;
  @override
  @JsonKey(name: 'video_aspect_ratio')
  final String videoAspectRatio;

  @override
  String toString() {
    return 'VideoModel(id: $id, title: $title, url: $url, cdnUrl: $cdnUrl, thumbCdnUrl: $thumbCdnUrl, userId: $userId, status: $status, slug: $slug, encodeStatus: $encodeStatus, priority: $priority, categoryId: $categoryId, totalViews: $totalViews, totalLikes: $totalLikes, totalComments: $totalComments, totalShare: $totalShare, totalWishlist: $totalWishlist, duration: $duration, byteAddedOn: $byteAddedOn, byteUpdatedOn: $byteUpdatedOn, bunnyStreamVideoId: $bunnyStreamVideoId, language: $language, bunnyEncodingStatus: $bunnyEncodingStatus, deletedAt: $deletedAt, videoHeight: $videoHeight, videoWidth: $videoWidth, user: $user, isLiked: $isLiked, isWished: $isWished, isFollow: $isFollow, videoAspectRatio: $videoAspectRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.cdnUrl, cdnUrl) || other.cdnUrl == cdnUrl) &&
            (identical(other.thumbCdnUrl, thumbCdnUrl) ||
                other.thumbCdnUrl == thumbCdnUrl) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.encodeStatus, encodeStatus) ||
                other.encodeStatus == encodeStatus) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.totalViews, totalViews) ||
                other.totalViews == totalViews) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes) &&
            (identical(other.totalComments, totalComments) ||
                other.totalComments == totalComments) &&
            (identical(other.totalShare, totalShare) ||
                other.totalShare == totalShare) &&
            (identical(other.totalWishlist, totalWishlist) ||
                other.totalWishlist == totalWishlist) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.byteAddedOn, byteAddedOn) ||
                other.byteAddedOn == byteAddedOn) &&
            (identical(other.byteUpdatedOn, byteUpdatedOn) ||
                other.byteUpdatedOn == byteUpdatedOn) &&
            (identical(other.bunnyStreamVideoId, bunnyStreamVideoId) ||
                other.bunnyStreamVideoId == bunnyStreamVideoId) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.bunnyEncodingStatus, bunnyEncodingStatus) ||
                other.bunnyEncodingStatus == bunnyEncodingStatus) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.videoHeight, videoHeight) ||
                other.videoHeight == videoHeight) &&
            (identical(other.videoWidth, videoWidth) ||
                other.videoWidth == videoWidth) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isWished, isWished) ||
                other.isWished == isWished) &&
            (identical(other.isFollow, isFollow) ||
                other.isFollow == isFollow) &&
            (identical(other.videoAspectRatio, videoAspectRatio) ||
                other.videoAspectRatio == videoAspectRatio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        url,
        cdnUrl,
        thumbCdnUrl,
        userId,
        status,
        slug,
        encodeStatus,
        priority,
        categoryId,
        totalViews,
        totalLikes,
        totalComments,
        totalShare,
        totalWishlist,
        duration,
        byteAddedOn,
        byteUpdatedOn,
        bunnyStreamVideoId,
        language,
        bunnyEncodingStatus,
        deletedAt,
        videoHeight,
        videoWidth,
        user,
        isLiked,
        isWished,
        isFollow,
        videoAspectRatio
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoModelImplCopyWith<_$VideoModelImpl> get copyWith =>
      __$$VideoModelImplCopyWithImpl<_$VideoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoModelImplToJson(
      this,
    );
  }

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

abstract class _VideoModel implements VideoModel {
  factory _VideoModel(
      {required final int id,
      required final String title,
      required final String url,
      @JsonKey(name: 'cdn_url') required final String cdnUrl,
      @JsonKey(name: 'thumb_cdn_url') required final String thumbCdnUrl,
      @JsonKey(name: 'user_id') required final int userId,
      required final String status,
      required final String slug,
      @JsonKey(name: 'encode_status') required final String encodeStatus,
      required final int priority,
      @JsonKey(name: 'category_id') required final int categoryId,
      @JsonKey(name: 'total_views') required final int totalViews,
      @JsonKey(name: 'total_likes') required final int totalLikes,
      @JsonKey(name: 'total_comments') required final int totalComments,
      @JsonKey(name: 'total_share') required final int totalShare,
      @JsonKey(name: 'total_wishlist') required final int totalWishlist,
      required final int duration,
      @JsonKey(name: 'byte_added_on') final DateTime? byteAddedOn,
      @JsonKey(name: 'byte_updated_on') final DateTime? byteUpdatedOn,
      @JsonKey(name: 'bunny_stream_video_id')
      required final String bunnyStreamVideoId,
      final String? language,
      @JsonKey(name: 'bunny_encoding_status')
      required final int bunnyEncodingStatus,
      @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
      @JsonKey(name: 'video_height') required final int videoHeight,
      @JsonKey(name: 'video_width') required final int videoWidth,
      required final UserModel user,
      @JsonKey(name: 'is_liked') required final bool isLiked,
      @JsonKey(name: 'is_wished') required final bool isWished,
      @JsonKey(name: 'is_follow') required final bool isFollow,
      @JsonKey(name: 'video_aspect_ratio')
      required final String videoAspectRatio}) = _$VideoModelImpl;

  factory _VideoModel.fromJson(Map<String, dynamic> json) =
      _$VideoModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(name: 'cdn_url')
  String get cdnUrl;
  @override
  @JsonKey(name: 'thumb_cdn_url')
  String get thumbCdnUrl;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get status;
  @override
  String get slug;
  @override
  @JsonKey(name: 'encode_status')
  String get encodeStatus;
  @override
  int get priority;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  @JsonKey(name: 'total_views')
  int get totalViews;
  @override
  @JsonKey(name: 'total_likes')
  int get totalLikes;
  @override
  @JsonKey(name: 'total_comments')
  int get totalComments;
  @override
  @JsonKey(name: 'total_share')
  int get totalShare;
  @override
  @JsonKey(name: 'total_wishlist')
  int get totalWishlist;
  @override
  int get duration;
  @override
  @JsonKey(name: 'byte_added_on')
  DateTime? get byteAddedOn;
  @override
  @JsonKey(name: 'byte_updated_on')
  DateTime? get byteUpdatedOn;
  @override
  @JsonKey(name: 'bunny_stream_video_id')
  String get bunnyStreamVideoId;
  @override
  String? get language;
  @override
  @JsonKey(name: 'bunny_encoding_status')
  int get bunnyEncodingStatus;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;
  @override
  @JsonKey(name: 'video_height')
  int get videoHeight;
  @override
  @JsonKey(name: 'video_width')
  int get videoWidth;
  @override
  UserModel get user;
  @override
  @JsonKey(name: 'is_liked')
  bool get isLiked;
  @override
  @JsonKey(name: 'is_wished')
  bool get isWished;
  @override
  @JsonKey(name: 'is_follow')
  bool get isFollow;
  @override
  @JsonKey(name: 'video_aspect_ratio')
  String get videoAspectRatio;
  @override
  @JsonKey(ignore: true)
  _$$VideoModelImplCopyWith<_$VideoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
