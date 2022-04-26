import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/data/banner/bloc/main_banner_bloc.dart';
import 'package:flutter_jsh_v2/app/ui/componets/skeleton_loader.dart';

class HomeBodyBanners extends StatelessWidget {
  const HomeBodyBanners({Key? key}) : super(key: key);

  final ratio = 1 / 1;

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<MainBannerBloc>();

    return bloc.state.status != FetchStatus.success || bloc.state.banners.isEmpty ? _loader() : _swiper(bloc);
  }

  Widget _loader() {
    return SkeletonLoader(
      child: AspectRatio(
        aspectRatio: ratio,
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _swiper(MainBannerBloc bloc) {
    final banners = bloc.state.banners;
    return AspectRatio(
      aspectRatio: ratio,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.black,
            child: Image.network(
              banners[index].imgUrl,
              fit: BoxFit.fitWidth,
            ),
          );
        },
        pagination: const SwiperPagination(),
        itemCount: banners.length,
        autoplay: true,
      ),
    );
  }
}
