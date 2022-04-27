import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/core/routes/routes.dart';
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
          _btn(title: "강의일정", icon: Icons.schedule, onTap: () => Routes.lectureSchedule.push(context)),
          _btn(title: "성적확인", icon: Icons.check, onTap: () => Routes.report.push(context)),
          _btn(title: "문제샘플", icon: Icons.text_snippet, onTap: () => Routes.examSample.push(context)),
          _btn(title: "강의샘플", icon: Icons.video_collection, onTap: () => Routes.videoSample.push(context)),
          // TODO Only IOS
          _btn(title: "문서스캔", icon: Icons.qr_code_scanner, onTap: () {}),
          // TODO Only Android
          _btn(title: "QNA", icon: Icons.question_answer, onTap: () {}),
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

  Widget _btn({required String title, required IconData icon, required Function() onTap}) {
    return Container(
      margin: const EdgeInsets.only(left: kHorizontalPadding, right: kHorizontalPadding, bottom: 24),
      child: ClayButton(
        onTap: onTap,
        width: double.infinity,
        height: 69,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Row(
            children: [
              Icon(
                icon,
                color: ColorPalette.appMain,
                size: 30,
              ),
              eWidth(10),
              Text(
                title,
                style: NotoSansKr.black16B,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
