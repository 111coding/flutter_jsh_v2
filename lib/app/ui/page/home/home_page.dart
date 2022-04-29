import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/ui/componets/empty_app_bar.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/components/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(
        height: MediaQuery.of(context).padding.top,
        color: ColorPalette.appMain,
      ),
      body: const HomeBody(),
    );
  }
}
