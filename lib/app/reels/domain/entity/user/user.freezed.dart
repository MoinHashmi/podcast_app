// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$User {
  int get userId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;
  String? get profilePictureCdn => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int userId,
      String fullName,
      String userName,
      String profilePicture,
      String? profilePictureCdn,
      String? designation});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

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
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      String fullName,
      String userName,
      String profilePicture,
      String? profilePictureCdn,
      String? designation});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
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
    return _then(_$UserImpl(
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

class _$UserImpl implements _User {
  _$UserImpl(
      {required this.userId,
      required this.fullName,
      required this.userName,
      required this.profilePicture,
      this.profilePictureCdn,
      this.designation});

  @override
  final int userId;
  @override
  final String fullName;
  @override
  final String userName;
  @override
  final String profilePicture;
  @override
  final String? profilePictureCdn;
  @override
  final String? designation;

  @override
  String toString() {
    return 'User(userId: $userId, fullName: $fullName, userName: $userName, profilePicture: $profilePicture, profilePictureCdn: $profilePictureCdn, designation: $designation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, userId, fullName, userName,
      profilePicture, profilePictureCdn, designation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  UserModel toModel() => UserModel(
      userId: userId,
      fullName: fullName,
      userName: userName,
      profilePicture: profilePicture,
      profilePictureCdn: profilePictureCdn);
}

abstract class _User implements User {
  factory _User(
      {required final int userId,
      required final String fullName,
      required final String userName,
      required final String profilePicture,
      final String? profilePictureCdn,
      final String? designation}) = _$UserImpl;

  @override
  int get userId;
  @override
  String get fullName;
  @override
  String get userName;
  @override
  String get profilePicture;
  @override
  String? get profilePictureCdn;
  @override
  String? get designation;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
