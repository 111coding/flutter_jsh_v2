import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';

class TitleAppBar extends AppBar implements PreferredSizeWidget {
  TitleAppBar({Key? key, required String title, Color? color})
      : super(
            key: key,
            backgroundColor: color,
            toolbarHeight: kAppBarHeight,
            title: Text(
              title,
              // style: NotoSansKr.black16B,
            ));
}
