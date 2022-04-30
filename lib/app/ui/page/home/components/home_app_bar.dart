import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';

class HomeAppBar extends AppBar with PreferredSizeWidget {
  HomeAppBar({Key? key})
      : super(
          key: key,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/jsh_char.png",
                height: 50,
                width: 40,
              ),
              eWidth(4),
              const Text(
                "정승현 전공물리",
                style: NotoSansKr.white18B,
              ),
              const Spacer(),
            ],
          ),
        );
}
