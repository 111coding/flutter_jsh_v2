import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/data/banner/bloc/main_banner_bloc.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/components/home_body_banners.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _banners(),
        ],
      ),
    );
  }

  Widget _banners() {
    return BlocProvider(
      create: (context) => MainBannerBloc()..fetch(),
      child: const HomeBodyBanners(),
    );
  }
}
