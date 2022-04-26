// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lecture_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LectureSchedule _$LectureScheduleFromJson(Map<String, dynamic> json) {
  return _LectureSchedule.fromJson(json);
}

/// @nodoc
mixin _$LectureSchedule {
  int get idx => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LectureScheduleCopyWith<LectureSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureScheduleCopyWith<$Res> {
  factory $LectureScheduleCopyWith(
          LectureSchedule value, $Res Function(LectureSchedule) then) =
      _$LectureScheduleCopyWithImpl<$Res>;
  $Res call({int idx, String fileUrl});
}

/// @nodoc
class _$LectureScheduleCopyWithImpl<$Res>
    implements $LectureScheduleCopyWith<$Res> {
  _$LectureScheduleCopyWithImpl(this._value, this._then);

  final LectureSchedule _value;
  // ignore: unused_field
  final $Res Function(LectureSchedule) _then;

  @override
  $Res call({
    Object? idx = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LectureScheduleCopyWith<$Res>
    implements $LectureScheduleCopyWith<$Res> {
  factory _$LectureScheduleCopyWith(
          _LectureSchedule value, $Res Function(_LectureSchedule) then) =
      __$LectureScheduleCopyWithImpl<$Res>;
  @override
  $Res call({int idx, String fileUrl});
}

/// @nodoc
class __$LectureScheduleCopyWithImpl<$Res>
    extends _$LectureScheduleCopyWithImpl<$Res>
    implements _$LectureScheduleCopyWith<$Res> {
  __$LectureScheduleCopyWithImpl(
      _LectureSchedule _value, $Res Function(_LectureSchedule) _then)
      : super(_value, (v) => _then(v as _LectureSchedule));

  @override
  _LectureSchedule get _value => super._value as _LectureSchedule;

  @override
  $Res call({
    Object? idx = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_LectureSchedule(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LectureSchedule implements _LectureSchedule {
  const _$_LectureSchedule({required this.idx, required this.fileUrl});

  factory _$_LectureSchedule.fromJson(Map<String, dynamic> json) =>
      _$$_LectureScheduleFromJson(json);

  @override
  final int idx;
  @override
  final String fileUrl;

  @override
  String toString() {
    return 'LectureSchedule(idx: $idx, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LectureSchedule &&
            const DeepCollectionEquality().equals(other.idx, idx) &&
            const DeepCollectionEquality().equals(other.fileUrl, fileUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idx),
      const DeepCollectionEquality().hash(fileUrl));

  @JsonKey(ignore: true)
  @override
  _$LectureScheduleCopyWith<_LectureSchedule> get copyWith =>
      __$LectureScheduleCopyWithImpl<_LectureSchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LectureScheduleToJson(this);
  }
}

abstract class _LectureSchedule implements LectureSchedule {
  const factory _LectureSchedule(
      {required final int idx,
      required final String fileUrl}) = _$_LectureSchedule;

  factory _LectureSchedule.fromJson(Map<String, dynamic> json) =
      _$_LectureSchedule.fromJson;

  @override
  int get idx => throw _privateConstructorUsedError;
  @override
  String get fileUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LectureScheduleCopyWith<_LectureSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
