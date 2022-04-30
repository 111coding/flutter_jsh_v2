import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/data/banner/bloc/main_banner_bloc.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/components/home_body_banners.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/components/home_body_btn_grid.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/components/home_body_cafe.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _banners(),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              eHeight(15),
              _btnGrid(),
              const Spacer(),
              const HomeBodyCafe(),
              eHeight(MediaQuery.of(context).padding.bottom),
            ],
          ),
        )
      ],
    );
  }

  Widget _banners() {
    return BlocProvider(
      create: (context) => MainBannerBloc()..fetch(),
      child: const HomeBodyBanners(),
    );
  }

  Widget _btnGrid() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: const HomeBodyBtnGrid(),
    );
  }
}
