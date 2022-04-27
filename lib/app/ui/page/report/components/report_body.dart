import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/core/api/api_connector.dart';
import 'package:flutter_jsh_v2/app/ui/page/report/components/auto_loader_webview.dart';

class ReportBody extends StatelessWidget {
  const ReportBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return AutoLoaderWebview(url: "http://davinci777.com");
    return const AutoLoaderWebview(url: ApiConnector.host);
  }
}
