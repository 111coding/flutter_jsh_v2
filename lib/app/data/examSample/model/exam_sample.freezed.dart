// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exam_sample.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExamSample _$ExamSampleFromJson(Map<String, dynamic> json) {
  return _ExamSample.fromJson(json);
}

/// @nodoc
mixin _$ExamSample {
  int get idx => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamSampleCopyWith<ExamSample> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamSampleCopyWith<$Res> {
  factory $ExamSampleCopyWith(
          ExamSample value, $Res Function(ExamSample) then) =
      _$ExamSampleCopyWithImpl<$Res>;
  $Res call({int idx, String title, String fileUrl});
}

/// @nodoc
class _$ExamSampleCopyWithImpl<$Res> implements $ExamSampleCopyWith<$Res> {
  _$ExamSampleCopyWithImpl(this._value, this._then);

  final ExamSample _value;
  // ignore: unused_field
  final $Res Function(ExamSample) _then;

  @override
  $Res call({
    Object? idx = freezed,
    Object? title = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExamSampleCopyWith<$Res> implements $ExamSampleCopyWith<$Res> {
  factory _$ExamSampleCopyWith(
          _ExamSample value, $Res Function(_ExamSample) then) =
      __$ExamSampleCopyWithImpl<$Res>;
  @override
  $Res call({int idx, String title, String fileUrl});
}

/// @nodoc
class __$ExamSampleCopyWithImpl<$Res> extends _$ExamSampleCopyWithImpl<$Res>
    implements _$ExamSampleCopyWith<$Res> {
  __$ExamSampleCopyWithImpl(
      _ExamSample _value, $Res Function(_ExamSample) _then)
      : super(_value, (v) => _then(v as _ExamSample));

  @override
  _ExamSample get _value => super._value as _ExamSample;

  @override
  $Res call({
    Object? idx = freezed,
    Object? title = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_ExamSample(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExamSample implements _ExamSample {
  const _$_ExamSample(
      {required this.idx, required this.title, required this.fileUrl});

  factory _$_ExamSample.fromJson(Map<String, dynamic> json) =>
      _$$_ExamSampleFromJson(json);

  @override
  final int idx;
  @override
  final String title;
  @override
  final String fileUrl;

  @override
  String toString() {
    return 'ExamSample(idx: $idx, title: $title, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExamSample &&
            const DeepCollectionEquality().equals(other.idx, idx) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.fileUrl, fileUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idx),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(fileUrl));

  @JsonKey(ignore: true)
  @override
  _$ExamSampleCopyWith<_ExamSample> get copyWith =>
      __$ExamSampleCopyWithImpl<_ExamSample>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExamSampleToJson(this);
  }
}

abstract class _ExamSample implements ExamSample {
  const factory _ExamSample(
      {required final int idx,
      required final String title,
      required final String fileUrl}) = _$_ExamSample;

  factory _ExamSample.fromJson(Map<String, dynamic> json) =
      _$_ExamSample.fromJson;

  @override
  int get idx => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get fileUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExamSampleCopyWith<_ExamSample> get copyWith =>
      throw _privateConstructorUsedError;
}
