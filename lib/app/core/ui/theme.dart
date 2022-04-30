/*
 * 앱 전체 디폴트 테마 데이터
 */

import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: ColorPalette.appMain,
    scaffoldBackgroundColor: ColorPalette.bgColor,
    fontFamily: kDefaultFontFamily,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    toolbarHeight: kAppBarHeight,
    color: ColorPalette.appMain,
    elevation: 0,
    iconTheme: IconThemeData(color: ColorPalette.white),
    titleTextStyle: NotoSansKr.white16B,
    toolbarTextStyle: NotoSansKr.white16B,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyLarge: NotoSansKr.textMain20B,
    bodyMedium: NotoSansKr.textMain16B,
    bodySmall: NotoSansKr.textMain14M,
  );
}
