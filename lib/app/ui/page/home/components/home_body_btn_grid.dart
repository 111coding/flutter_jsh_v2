import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ios_document_scanner/flutter_ios_document_scanner.dart';
import 'package:flutter_jsh_v2/app/core/api/api_connector.dart';
import 'package:flutter_jsh_v2/app/core/routes/routes.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/ui/componets/clay_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeBodyBtnGrid extends StatelessWidget {
  const HomeBodyBtnGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1, // 아이템 비율
        // mainAxisExtent: 150, // 세로 최대크기
        mainAxisSpacing: 10, // 세로 간격
        crossAxisSpacing: 15, // 가로 간격
      ),
      children: [
        _btn(title: "강의일정", icon: "schedule", onTap: () => Routes.lectureSchedule.push(context)),
        _btn(title: "성적확인", icon: "report", onTap: () => Routes.report.push(context)),
        _btn(title: "문제샘플", icon: "exam_sample", onTap: () => Routes.examSample.push(context)),
        _btn(title: "강의샘플", icon: "video2", onTap: () => Routes.videoSample.push(context)),
        // TODO Only IOS
        if (Platform.isIOS)
          _btn(
            title: "문서스캔",
            icon: "scan",
            onTap: () {
              FlutterIosDocumentScanner.scanDocument();
            },
          ),
        // TODO Only Android
        if (Platform.isAndroid)
          _btn(
              title: "QNA",
              icon: "qna",
              onTap: () {
                launchUrlString(ApiConnector.cafeQnaUrl);
              }),
      ],
    );
  }

  Widget _btn({required String title, required String icon, required Function() onTap}) {
    return ClayButton(
      onTap: onTap,
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/btn/$icon.png",
              height: 40,
            ),
            eHeight(10),
            Text(
              title,
              style: NotoSansKr.textMain16B,
            ),
          ],
        ),
      ),
    );
  }
}
