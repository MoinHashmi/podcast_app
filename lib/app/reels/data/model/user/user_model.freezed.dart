// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullname')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture_cdn')
  String? get profilePictureCdn => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'fullname') String fullName,
      @JsonKey(name: 'username') String userName,
      @JsonKey(name: 'profile_picture') String profilePicture,
      @JsonKey(name: 'profile_picture_cdn') String? profilePictureCdn,
      String? designation});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? fullName = null,
    Object? userName = null,
    Object? profilePicture = null,
    Object? profilePictureCdn = freezed,
    Object? designation = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureCdn: freezed == profilePictureCdn
          ? _value.profilePictureCdn
          : profilePictureCdn // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'fullname') String fullName,
      @JsonKey(name: 'username') String userName,
      @JsonKey(name: 'profile_picture') String profilePicture,
      @JsonKey(name: 'profile_picture_cdn') String? profilePictureCdn,
      String? designation});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? fullName = null,
    Object? userName = null,
    Object? profilePicture = null,
    Object? profilePictureCdn = freezed,
    Object? designation = freezed,
  }) {
    return _then(_$UserModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureCdn: freezed == profilePictureCdn
          ? _value.profilePictureCdn
          : profilePictureCdn // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'fullname') required this.fullName,
      @JsonKey(name: 'username') required this.userName,
      @JsonKey(name: 'profile_picture') required this.profilePicture,
      @JsonKey(name: 'profile_picture_cdn') this.profilePictureCdn,
      this.designation});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'fullname')
  final String fullName;
  @override
  @JsonKey(name: 'username')
  final String userName;
  @override
  @JsonKey(name: 'profile_picture')
  final String profilePicture;
  @override
  @JsonKey(name: 'profile_picture_cdn')
  final String? profilePictureCdn;
  @override
  final String? designation;

  @override
  String toString() {
    return 'UserModel(userId: $userId, fullName: $fullName, userName: $userName, profilePicture: $profilePicture, profilePictureCdn: $profilePictureCdn, designation: $designation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.profilePictureCdn, profilePictureCdn) ||
                other.profilePictureCdn == profilePictureCdn) &&
            (identical(other.designation, designation) ||
                other.designation == designation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, fullName, userName,
      profilePicture, profilePictureCdn, designation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }

  User toEntity() => User(
      userId: userId,
      fullName: fullName,
      userName: userName,
      profilePicture: profilePicture,
      profilePictureCdn: profilePictureCdn);
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {@JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'fullname') required final String fullName,
      @JsonKey(name: 'username') required final String userName,
      @JsonKey(name: 'profile_picture') required final String profilePicture,
      @JsonKey(name: 'profile_picture_cdn') final String? profilePictureCdn,
      final String? designation}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'fullname')
  String get fullName;
  @override
  @JsonKey(name: 'username')
  String get userName;
  @override
  @JsonKey(name: 'profile_picture')
  String get profilePicture;
  @override
  @JsonKey(name: 'profile_picture_cdn')
  String? get profilePictureCdn;
  @override
  String? get designation;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
