import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/data/banner/bloc/main_banner_bloc.dart';
import 'package:flutter_jsh_v2/app/ui/componets/custom_sliver.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/components/home_body_banners.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const toolbarHeight = 65.0;

    return CustomSliver(
      toolbarHeight: toolbarHeight,
      expandedHeight: MediaQuery.of(context).size.width, // ratio 1:1
      builder: (context, offset, statusBarHeight) {
        return Container(
          // color: ColorPalette.white,
          // padding: EdgeInsets.only(top: statusBarHeight, left: kHorizontalPadding, right: kHorizontalPadding),
          child: Stack(
            children: [
              _banners(),
              Align(
                alignment: Alignment.topCenter,
                child: IgnorePointer(
                  ignoring: offset > 0.5,
                  child: Opacity(
                    opacity: 1 - offset,
                    child: Container(
                      width: double.infinity,
                      height: toolbarHeight,
                      color: ColorPalette.appMain,
                      child: Row(
                        children: [
                          eWidth(8),
                          Image.asset(
                            "assets/jsh_char.png",
                            height: 60,
                          ),
                          eWidth(8),
                          const Text(
                            "정승현 전공물리",
                            style: NotoSansKr.white20B,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _banners() {
    return SingleChildScrollView(
      reverse: true,
      physics: const NeverScrollableScrollPhysics(),
      child: BlocProvider(
        create: (context) => MainBannerBloc()..fetch(),
        child: const HomeBodyBanners(),
      ),
    );
  }
}
