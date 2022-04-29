import 'package:flutter/material.dart';

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EmptyAppBar({Key? key, this.height = 0, this.color}) : super(key: key);

  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
