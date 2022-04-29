import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/ui/componets/title_app_bar.dart';
import 'package:flutter_jsh_v2/app/ui/page/report/components/report_body.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(title: "성적확인"),
      body: const ReportBody(),
    );
  }
}
