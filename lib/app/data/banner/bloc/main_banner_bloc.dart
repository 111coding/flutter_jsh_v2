import 'package:bloc/bloc.dart';
import 'package:flutter_jsh_v2/app/core/api/api_connector.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/core/routes/routes.dart';
import 'package:flutter_jsh_v2/app/data/banner/bloc/main_banner_event.dart';
import 'package:flutter_jsh_v2/app/data/banner/bloc/main_banner_state.dart';
import 'package:flutter_jsh_v2/app/data/banner/model/main_banner.dart';

class MainBannerBloc extends Bloc<MainBannerEvent, MainBannerState> {
  final ApiConnector _connector = ApiConnector();

  void fetch() {
    add(MainBannerFetchEvent());
  }

  // =============== event registration ===============
  MainBannerBloc() : super(const MainBannerState()) {
    on<MainBannerFetchEvent>(_mainBannerFetchEvent);
  }

  Future<void> _mainBannerFetchEvent(MainBannerEvent event, Emitter<MainBannerState> emit) async {
    var resultMap = await _connector.get<List>(Routes.home.path);
    if (resultMap == null) return;
    final banners = resultMap.map((e) => MainBanner.fromJson(e)).toList();
    emit(state.copyWith(status: FetchStatus.success, banners: banners));
  }
}
