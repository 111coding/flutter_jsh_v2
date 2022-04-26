import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/data/banner/bloc/main_banner_bloc.dart';
import 'package:flutter_jsh_v2/app/ui/componets/clay_button.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/components/home_body_banners.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _banners(),
          eHeight(24),
          ..._btnGroup(),
          eHeight(100),
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

  List<Widget> _btnGroup() {
    final titles = ["강의일정", "성적확인", "문제샘플", "강의샘플", "문서스캔", "QNA"];
    final icons = [Icons.schedule, Icons.check, Icons.text_snippet, Icons.video_collection, Icons.qr_code_scanner, Icons.question_answer];
    return List.generate(
      6,
      (index) {
        final children = [
          Icon(
            icons[index],
            color: ColorPalette.appMain,
            size: 30,
          ),
          eWidth(10),
          Text(
            titles[index],
            style: NotoSansKr.black16B,
          ),
        ];

        return Container(
          margin: const EdgeInsets.only(left: kHorizontalPadding, right: kHorizontalPadding, bottom: 24),
          child: ClayButton(
            width: double.infinity,
            height: 69,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
              child: Row(
                children: children,
              ),
            ),
          ),
        );
      },
    );
  }
}
