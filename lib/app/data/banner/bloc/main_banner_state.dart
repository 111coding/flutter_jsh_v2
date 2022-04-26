import 'package:equatable/equatable.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/data/banner/model/main_banner.dart';

class MainBannerState extends Equatable {
  const MainBannerState({
    this.status = FetchStatus.initial,
    this.banners = const <MainBanner>[],
  });

  final FetchStatus status;
  final List<MainBanner> banners;

  MainBannerState copyWith({
    FetchStatus? status,
    List<MainBanner>? banners,
  }) {
    return MainBannerState(
      status: status ?? this.status,
      banners: banners ?? this.banners,
    );
  }

  @override
  String toString() {
    return '''PostState { status: $status, posts: ${banners.length} }''';
  }

  @override
  List<Object> get props => [status, banners];
}
