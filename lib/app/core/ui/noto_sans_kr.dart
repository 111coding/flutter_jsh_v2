import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';

/// 시스템 디폴트 폰트
const kDefaultFontFamily = "Noto_Sans_KR";

/*
 * 앱 전역으로 사용할 폰트
 */
class NotoSansKr {
// 400 R
// 500 M
  static const black12R = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ColorPalette.black, height: 14.4);
  static const black12M = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.black, height: 14.4);
  static const black14R = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.black, height: 16.8);
  static const black14M = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorPalette.black, height: 16.8);
  static const black14B = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorPalette.black, height: 16.8);

  static const black16Rh22 = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorPalette.black, height: 22);
  static const black16R = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorPalette.black, height: 19.2);
  static const black16M = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.w500, color: ColorPalette.black, height: 19.2);
  static const black16B = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ColorPalette.black, height: 19.2);
  static const black18M = _NotoSansKrStyle(fontSize: 18, fontWeight: FontWeight.w500, color: ColorPalette.black, height: 14.4);
  static const black18B = _NotoSansKrStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorPalette.black, height: 21.6);
  static const black20B = _NotoSansKrStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ColorPalette.black, height: 24);
  static const black24B = _NotoSansKrStyle(fontSize: 24, fontWeight: FontWeight.bold, color: ColorPalette.black, height: 24);

  static const white10R = _NotoSansKrStyle(fontSize: 10, fontWeight: FontWeight.w400, color: ColorPalette.white, height: 12);
  static const white12M = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.white, height: 14.4);
  static const white14M = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorPalette.white, height: 17);
  static const white14B = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ColorPalette.white, height: 17);
  static const white16R = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorPalette.white, height: 19.2);
  static const white16B = _NotoSansKrStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ColorPalette.white, height: 19.2);
  static const white18M = _NotoSansKrStyle(fontSize: 18, fontWeight: FontWeight.w500, color: ColorPalette.white, height: 16.8);
  static const white18B = _NotoSansKrStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorPalette.white, height: 16.8);
  static const white20B = _NotoSansKrStyle(fontSize: 20, fontWeight: FontWeight.bold, color: ColorPalette.white, height: 23);
  static const white22BL = _NotoSansKrStyle(fontSize: 22, fontWeight: FontWeight.w900, color: ColorPalette.white, height: 26);

  static const disableText12R = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ColorPalette.disableText, height: 14.4);
  static const disableText12M = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.disableText, height: 14.4);
  static const disableText12B = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.bold, color: ColorPalette.disableText, height: 14.4);
  static const disableText13R = _NotoSansKrStyle(fontSize: 12, fontWeight: FontWeight.w500, color: ColorPalette.disableText, height: 15.6);
  static const disableText14R = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorPalette.disableText, height: 15.6);
  static const disableText14M = _NotoSansKrStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorPalette.disableText, height: 16.8);
}

class _NotoSansKrStyle extends TextStyle {
  const _NotoSansKrStyle({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    Paint? foreground,
  }) : super(
          fontFamily: fontFamily ?? kDefaultFontFamily,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: height == null || fontSize == null ? null : height / fontSize, // textHeight 비율로 계산해줌
          leadingDistribution: TextLeadingDistribution.proportional, // fontHeight 정가운데에 텍스트가 오게
          foreground: foreground,
        );
}
