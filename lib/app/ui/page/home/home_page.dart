import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/components/home_app_bar.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/components/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: const HomeBody(),
    );
  }
}
