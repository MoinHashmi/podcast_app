// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reels_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReelsData {
  List<Video> get data => throw _privateConstructorUsedError;
  MetaData get metaData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReelsDataCopyWith<ReelsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelsDataCopyWith<$Res> {
  factory $ReelsDataCopyWith(ReelsData value, $Res Function(ReelsData) then) =
      _$ReelsDataCopyWithImpl<$Res, ReelsData>;
  @useResult
  $Res call({List<Video> data, MetaData metaData});

  $MetaDataCopyWith<$Res> get metaData;
}

/// @nodoc
class _$ReelsDataCopyWithImpl<$Res, $Val extends ReelsData>
    implements $ReelsDataCopyWith<$Res> {
  _$ReelsDataCopyWithImpl(this._value, this._then);

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
              as List<Video>,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataCopyWith<$Res> get metaData {
    return $MetaDataCopyWith<$Res>(_value.metaData, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReelsDataImplCopyWith<$Res>
    implements $ReelsDataCopyWith<$Res> {
  factory _$$ReelsDataImplCopyWith(
          _$ReelsDataImpl value, $Res Function(_$ReelsDataImpl) then) =
      __$$ReelsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Video> data, MetaData metaData});

  @override
  $MetaDataCopyWith<$Res> get metaData;
}

/// @nodoc
class __$$ReelsDataImplCopyWithImpl<$Res>
    extends _$ReelsDataCopyWithImpl<$Res, _$ReelsDataImpl>
    implements _$$ReelsDataImplCopyWith<$Res> {
  __$$ReelsDataImplCopyWithImpl(
      _$ReelsDataImpl _value, $Res Function(_$ReelsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? metaData = null,
  }) {
    return _then(_$ReelsDataImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData,
    ));
  }
}

/// @nodoc

class _$ReelsDataImpl implements _ReelsData {
  _$ReelsDataImpl({required final List<Video> data, required this.metaData})
      : _data = data;

  final List<Video> _data;
  @override
  List<Video> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final MetaData metaData;

  @override
  String toString() {
    return 'ReelsData(data: $data, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReelsDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), metaData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReelsDataImplCopyWith<_$ReelsDataImpl> get copyWith =>
      __$$ReelsDataImplCopyWithImpl<_$ReelsDataImpl>(this, _$identity);

  ReelsDataModel toModel() => ReelsDataModel(
      data: data.map((e) => e.toModel()).toList(),
      metaData: metaData.toModel());
}

abstract class _ReelsData implements ReelsData {
  factory _ReelsData(
      {required final List<Video> data,
      required final MetaData metaData}) = _$ReelsDataImpl;

  @override
  List<Video> get data;
  @override
  MetaData get metaData;
  @override
  @JsonKey(ignore: true)
  _$$ReelsDataImplCopyWith<_$ReelsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
