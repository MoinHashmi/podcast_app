// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reels_api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReelsApiResponseModel _$ReelsApiResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ReelsApiResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ReelsApiResponseModel {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ReelsDataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReelsApiResponseModelCopyWith<ReelsApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelsApiResponseModelCopyWith<$Res> {
  factory $ReelsApiResponseModelCopyWith(ReelsApiResponseModel value,
          $Res Function(ReelsApiResponseModel) then) =
      _$ReelsApiResponseModelCopyWithImpl<$Res, ReelsApiResponseModel>;
  @useResult
  $Res call({int statusCode, String message, ReelsDataModel data});

  $ReelsDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$ReelsApiResponseModelCopyWithImpl<$Res,
        $Val extends ReelsApiResponseModel>
    implements $ReelsApiResponseModelCopyWith<$Res> {
  _$ReelsApiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ReelsDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReelsDataModelCopyWith<$Res> get data {
    return $ReelsDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReelsApiResponseModelImplCopyWith<$Res>
    implements $ReelsApiResponseModelCopyWith<$Res> {
  factory _$$ReelsApiResponseModelImplCopyWith(
          _$ReelsApiResponseModelImpl value,
          $Res Function(_$ReelsApiResponseModelImpl) then) =
      __$$ReelsApiResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, String message, ReelsDataModel data});

  @override
  $ReelsDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$ReelsApiResponseModelImplCopyWithImpl<$Res>
    extends _$ReelsApiResponseModelCopyWithImpl<$Res,
        _$ReelsApiResponseModelImpl>
    implements _$$ReelsApiResponseModelImplCopyWith<$Res> {
  __$$ReelsApiResponseModelImplCopyWithImpl(_$ReelsApiResponseModelImpl _value,
      $Res Function(_$ReelsApiResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$ReelsApiResponseModelImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ReelsDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReelsApiResponseModelImpl implements _ReelsApiResponseModel {
  _$ReelsApiResponseModelImpl(
      {required this.statusCode, required this.message, required this.data});

  factory _$ReelsApiResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReelsApiResponseModelImplFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;
  @override
  final ReelsDataModel data;

  @override
  String toString() {
    return 'ReelsApiResponseModel(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReelsApiResponseModelImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReelsApiResponseModelImplCopyWith<_$ReelsApiResponseModelImpl>
      get copyWith => __$$ReelsApiResponseModelImplCopyWithImpl<
          _$ReelsApiResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReelsApiResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ReelsApiResponseModel implements ReelsApiResponseModel {
  factory _ReelsApiResponseModel(
      {required final int statusCode,
      required final String message,
      required final ReelsDataModel data}) = _$ReelsApiResponseModelImpl;

  factory _ReelsApiResponseModel.fromJson(Map<String, dynamic> json) =
      _$ReelsApiResponseModelImpl.fromJson;

  @override
  int get statusCode;
  @override
  String get message;
  @override
  ReelsDataModel get data;
  @override
  @JsonKey(ignore: true)
  _$$ReelsApiResponseModelImplCopyWith<_$ReelsApiResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
