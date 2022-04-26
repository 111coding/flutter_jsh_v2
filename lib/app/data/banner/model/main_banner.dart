import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_banner.freezed.dart';
part 'main_banner.g.dart';

@freezed
class MainBanner with _$MainBanner {
  const factory MainBanner({
    required int idx,
    required String imgUrl,
    required String href,
  }) = _MainBanner;

  factory MainBanner.fromJson(Map<String, dynamic> json) => _$MainBannerFromJson(json);
}
