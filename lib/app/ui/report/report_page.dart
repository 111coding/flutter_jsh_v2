import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/ui/report/components/report_body.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReportBody(),
    );
  }
}