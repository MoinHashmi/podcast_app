import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcast_app/app/reels/domain/entity/user/user.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'fullname') required String fullName,
    @JsonKey(name: 'username') required String userName,
    @JsonKey(name: 'profile_picture') required String profilePicture,
    @JsonKey(name: 'profile_picture_cdn') String? profilePictureCdn,
    String? designation,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() => User(
      userId: userId,
      fullName: fullName,
      userName: userName,
      profilePicture: profilePicture,
      profilePictureCdn: profilePictureCdn);
}
