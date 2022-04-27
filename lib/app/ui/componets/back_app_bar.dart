import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';

class BackAppBar extends AppBar implements PreferredSizeWidget {
  BackAppBar({Key? key})
      : super(
          key: key,
          backgroundColor: ColorPalette.bgColor,
          toolbarHeight: kAppBarHeight,
        );
}
