// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_sample.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoSample _$VideoSampleFromJson(Map<String, dynamic> json) {
  return _VideoSample.fromJson(json);
}

/// @nodoc
mixin _$VideoSample {
  int get idx => throw _privateConstructorUsedError;
  String get videoId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoSampleCopyWith<VideoSample> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoSampleCopyWith<$Res> {
  factory $VideoSampleCopyWith(
          VideoSample value, $Res Function(VideoSample) then) =
      _$VideoSampleCopyWithImpl<$Res>;
  $Res call({int idx, String videoId, String title, String thumb});
}

/// @nodoc
class _$VideoSampleCopyWithImpl<$Res> implements $VideoSampleCopyWith<$Res> {
  _$VideoSampleCopyWithImpl(this._value, this._then);

  final VideoSample _value;
  // ignore: unused_field
  final $Res Function(VideoSample) _then;

  @override
  $Res call({
    Object? idx = freezed,
    Object? videoId = freezed,
    Object? title = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_value.copyWith(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VideoSampleCopyWith<$Res>
    implements $VideoSampleCopyWith<$Res> {
  factory _$VideoSampleCopyWith(
          _VideoSample value, $Res Function(_VideoSample) then) =
      __$VideoSampleCopyWithImpl<$Res>;
  @override
  $Res call({int idx, String videoId, String title, String thumb});
}

/// @nodoc
class __$VideoSampleCopyWithImpl<$Res> extends _$VideoSampleCopyWithImpl<$Res>
    implements _$VideoSampleCopyWith<$Res> {
  __$VideoSampleCopyWithImpl(
      _VideoSample _value, $Res Function(_VideoSample) _then)
      : super(_value, (v) => _then(v as _VideoSample));

  @override
  _VideoSample get _value => super._value as _VideoSample;

  @override
  $Res call({
    Object? idx = freezed,
    Object? videoId = freezed,
    Object? title = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_VideoSample(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoSample implements _VideoSample {
  const _$_VideoSample(
      {required this.idx,
      required this.videoId,
      required this.title,
      required this.thumb});

  factory _$_VideoSample.fromJson(Map<String, dynamic> json) =>
      _$$_VideoSampleFromJson(json);

  @override
  final int idx;
  @override
  final String videoId;
  @override
  final String title;
  @override
  final String thumb;

  @override
  String toString() {
    return 'VideoSample(idx: $idx, videoId: $videoId, title: $title, thumb: $thumb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoSample &&
            const DeepCollectionEquality().equals(other.idx, idx) &&
            const DeepCollectionEquality().equals(other.videoId, videoId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.thumb, thumb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idx),
      const DeepCollectionEquality().hash(videoId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(thumb));

  @JsonKey(ignore: true)
  @override
  _$VideoSampleCopyWith<_VideoSample> get copyWith =>
      __$VideoSampleCopyWithImpl<_VideoSample>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoSampleToJson(this);
  }
}

abstract class _VideoSample implements VideoSample {
  const factory _VideoSample(
      {required final int idx,
      required final String videoId,
      required final String title,
      required final String thumb}) = _$_VideoSample;

  factory _VideoSample.fromJson(Map<String, dynamic> json) =
      _$_VideoSample.fromJson;

  @override
  int get idx => throw _privateConstructorUsedError;
  @override
  String get videoId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get thumb => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoSampleCopyWith<_VideoSample> get copyWith =>
      throw _privateConstructorUsedError;
}
