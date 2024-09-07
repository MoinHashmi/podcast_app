import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcast_app/app/reels/data/model/user/user_model.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    required int userId,
    required String fullName,
    required String userName,
    required String profilePicture,
    String? profilePictureCdn,
    String? designation,
  }) = _User;

  UserModel toModel() => UserModel(
      userId: userId,
      fullName: fullName,
      userName: userName,
      profilePicture: profilePicture,
      profilePictureCdn: profilePictureCdn);
}