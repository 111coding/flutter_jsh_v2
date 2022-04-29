import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/ui/componets/title_app_bar.dart';
import 'package:flutter_jsh_v2/app/ui/page/exam_sample/components/exam_sample_body.dart';

class ExamSamplePage extends StatelessWidget {
  const ExamSamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(title: "문제샘플"),
      body: const ExamSampleBody(),
    );
  }
}
