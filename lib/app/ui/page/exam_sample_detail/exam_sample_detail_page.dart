import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/ui/page/exam_sample_detail/components/exam_sample_detail_body.dart';

class ExamSampleDetailPage extends StatelessWidget {
  const ExamSampleDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ExamSampleDetailBody(),
    );
  }
}
