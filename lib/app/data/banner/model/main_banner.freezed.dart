// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainBanner _$MainBannerFromJson(Map<String, dynamic> json) {
  return _MainBanner.fromJson(json);
}

/// @nodoc
mixin _$MainBanner {
  int get idx => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainBannerCopyWith<MainBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainBannerCopyWith<$Res> {
  factory $MainBannerCopyWith(
          MainBanner value, $Res Function(MainBanner) then) =
      _$MainBannerCopyWithImpl<$Res>;
  $Res call({int idx, String imgUrl, String href});
}

/// @nodoc
class _$MainBannerCopyWithImpl<$Res> implements $MainBannerCopyWith<$Res> {
  _$MainBannerCopyWithImpl(this._value, this._then);

  final MainBanner _value;
  // ignore: unused_field
  final $Res Function(MainBanner) _then;

  @override
  $Res call({
    Object? idx = freezed,
    Object? imgUrl = freezed,
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MainBannerCopyWith<$Res> implements $MainBannerCopyWith<$Res> {
  factory _$MainBannerCopyWith(
          _MainBanner value, $Res Function(_MainBanner) then) =
      __$MainBannerCopyWithImpl<$Res>;
  @override
  $Res call({int idx, String imgUrl, String href});
}

/// @nodoc
class __$MainBannerCopyWithImpl<$Res> extends _$MainBannerCopyWithImpl<$Res>
    implements _$MainBannerCopyWith<$Res> {
  __$MainBannerCopyWithImpl(
      _MainBanner _value, $Res Function(_MainBanner) _then)
      : super(_value, (v) => _then(v as _MainBanner));

  @override
  _MainBanner get _value => super._value as _MainBanner;

  @override
  $Res call({
    Object? idx = freezed,
    Object? imgUrl = freezed,
    Object? href = freezed,
  }) {
    return _then(_MainBanner(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainBanner implements _MainBanner {
  const _$_MainBanner(
      {required this.idx, required this.imgUrl, required this.href});

  factory _$_MainBanner.fromJson(Map<String, dynamic> json) =>
      _$$_MainBannerFromJson(json);

  @override
  final int idx;
  @override
  final String imgUrl;
  @override
  final String href;

  @override
  String toString() {
    return 'MainBanner(idx: $idx, imgUrl: $imgUrl, href: $href)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainBanner &&
            const DeepCollectionEquality().equals(other.idx, idx) &&
            const DeepCollectionEquality().equals(other.imgUrl, imgUrl) &&
            const DeepCollectionEquality().equals(other.href, href));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idx),
      const DeepCollectionEquality().hash(imgUrl),
      const DeepCollectionEquality().hash(href));

  @JsonKey(ignore: true)
  @override
  _$MainBannerCopyWith<_MainBanner> get copyWith =>
      __$MainBannerCopyWithImpl<_MainBanner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainBannerToJson(this);
  }
}

abstract class _MainBanner implements MainBanner {
  const factory _MainBanner(
      {required final int idx,
      required final String imgUrl,
      required final String href}) = _$_MainBanner;

  factory _MainBanner.fromJson(Map<String, dynamic> json) =
      _$_MainBanner.fromJson;

  @override
  int get idx => throw _privateConstructorUsedError;
  @override
  String get imgUrl => throw _privateConstructorUsedError;
  @override
  String get href => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainBannerCopyWith<_MainBanner> get copyWith =>
      throw _privateConstructorUsedError;
}
