import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:flutter_jsh_v2/app/core/routes/routes.dart';

class ExamSampleDetailBody extends StatelessWidget {
  const ExamSampleDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = context.arguments();
    return args == null
        ? const Center(
            child: Text("데이터가 없습니다"),
          )
        : const PDF(
            swipeHorizontal: true,
          ).cachedFromUrl(args);
  }
}
