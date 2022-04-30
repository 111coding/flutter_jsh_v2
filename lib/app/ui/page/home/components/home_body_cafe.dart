import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/core/api/api_connector.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/data/banner/bloc/main_banner_bloc.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/components/home_body_banners.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/components/home_body_btn_grid.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeBodyCafe extends StatelessWidget {
  const HomeBodyCafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launchUrlString(ApiConnector.cafeUrl),
      child: Container(
        width: double.infinity,
        height: 50,
        color: ColorPalette.appMain,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/btn/site.png",
              height: 30,
            ),
            eWidth(8),
            const Text(
              "정승현 전공물리 카페 바로가기",
              style: NotoSansKr.white16B,
            ),
          ],
        ),
      ),
    );
  }
}
