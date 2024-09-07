// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reels_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReelsDataModel _$ReelsDataModelFromJson(Map<String, dynamic> json) {
  return _ReelsDataModel.fromJson(json);
}

/// @nodoc
mixin _$ReelsDataModel {
  List<VideoModel> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_data')
  MetaDataModel get metaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReelsDataModelCopyWith<ReelsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelsDataModelCopyWith<$Res> {
  factory $ReelsDataModelCopyWith(
          ReelsDataModel value, $Res Function(ReelsDataModel) then) =
      _$ReelsDataModelCopyWithImpl<$Res, ReelsDataModel>;
  @useResult
  $Res call(
      {List<VideoModel> data,
      @JsonKey(name: 'meta_data') MetaDataModel metaData});

  $MetaDataModelCopyWith<$Res> get metaData;
}

/// @nodoc
class _$ReelsDataModelCopyWithImpl<$Res, $Val extends ReelsDataModel>
    implements $ReelsDataModelCopyWith<$Res> {
  _$ReelsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? metaData = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataModelCopyWith<$Res> get metaData {
    return $MetaDataModelCopyWith<$Res>(_value.metaData, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReelsDataModelImplCopyWith<$Res>
    implements $ReelsDataModelCopyWith<$Res> {
  factory _$$ReelsDataModelImplCopyWith(_$ReelsDataModelImpl value,
          $Res Function(_$ReelsDataModelImpl) then) =
      __$$ReelsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<VideoModel> data,
      @JsonKey(name: 'meta_data') MetaDataModel metaData});

  @override
  $MetaDataModelCopyWith<$Res> get metaData;
}

/// @nodoc
class __$$ReelsDataModelImplCopyWithImpl<$Res>
    extends _$ReelsDataModelCopyWithImpl<$Res, _$ReelsDataModelImpl>
    implements _$$ReelsDataModelImplCopyWith<$Res> {
  __$$ReelsDataModelImplCopyWithImpl(
      _$ReelsDataModelImpl _value, $Res Function(_$ReelsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? metaData = null,
  }) {
    return _then(_$ReelsDataModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReelsDataModelImpl implements _ReelsDataModel {
  _$ReelsDataModelImpl(
      {required final List<VideoModel> data,
      @JsonKey(name: 'meta_data') required this.metaData})
      : _data = data;

  factory _$ReelsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReelsDataModelImplFromJson(json);

  final List<VideoModel> _data;
  @override
  List<VideoModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'meta_data')
  final MetaDataModel metaData;

  @override
  String toString() {
    return 'ReelsDataModel(data: $data, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReelsDataModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), metaData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReelsDataModelImplCopyWith<_$ReelsDataModelImpl> get copyWith =>
      __$$ReelsDataModelImplCopyWithImpl<_$ReelsDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReelsDataModelImplToJson(
      this,
    );
  }

  ReelsData toEntity() => ReelsData(
      data: data.map((e) => e.toEntity()).toList(),
      metaData: metaData.toEntity()
  );
}

abstract class _ReelsDataModel implements ReelsDataModel {
  factory _ReelsDataModel(
          {required final List<VideoModel> data,
          @JsonKey(name: 'meta_data') required final MetaDataModel metaData}) =
      _$ReelsDataModelImpl;

  factory _ReelsDataModel.fromJson(Map<String, dynamic> json) =
      _$ReelsDataModelImpl.fromJson;

  @override
  List<VideoModel> get data;
  @override
  @JsonKey(name: 'meta_data')
  MetaDataModel get metaData;
  @override
  @JsonKey(ignore: true)
  _$$ReelsDataModelImplCopyWith<_$ReelsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
