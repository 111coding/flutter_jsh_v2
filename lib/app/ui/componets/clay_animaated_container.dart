import 'package:flutter/material.dart';

enum CurveType { concave, convex, none }

class ClayAnimatedContainer extends StatelessWidget {
  final Duration? duration;
  final Curve? curve;
  final double? height;
  final double? width;
  final Color? color;
  final Color? parentColor;
  final Color? surfaceColor;
  final double? spread;
  final Widget? child;
  final double? borderRadius;
  final BorderRadius? customBorderRadius;
  final CurveType? curveType;
  final int? depth;
  final bool? emboss;
  final Function()? onEnd;

  const ClayAnimatedContainer({
    Key? key,
    this.child,
    this.height,
    this.width,
    this.color,
    this.surfaceColor,
    this.parentColor,
    this.spread,
    this.borderRadius,
    this.customBorderRadius,
    this.curveType,
    this.depth,
    this.emboss,
    this.duration,
    this.curve,
    this.onEnd,
  }) : super(key: key);

  Color _getAdjustColor(Color baseColor, amount) {
    Map colors = {"red": baseColor.red, "green": baseColor.green, "blue": baseColor.blue};
    colors = colors.map((key, value) {
      if (value + amount < 0) return MapEntry(key, 0);
      if (value + amount > 255) return MapEntry(key, 255);
      return MapEntry(key, value + amount);
    });
    return Color.fromRGBO(colors["red"], colors["green"], colors["blue"], 1);
  }

  List<Color> _getFlatGradients(baseColor, depth) {
    return [
      baseColor,
      baseColor,
    ];
  }

  List<Color> _getConcaveGradients(baseColor, depth) {
    return [
      _getAdjustColor(baseColor, 0 - depth),
      _getAdjustColor(baseColor, depth),
    ];
  }

  List<Color> _getConvexGradients(baseColor, depth) {
    return [
      _getAdjustColor(baseColor, depth),
      _getAdjustColor(baseColor, 0 - depth),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final double? heightValue = height;
    final double? widthValue = width;
    final int? depthValue = depth ?? 20;
    Color? colorValue = color ?? const Color(0xFFf0f0f0);
    final Color parentColorValue = parentColor ?? colorValue;
    final Color? surfaceColorValue = surfaceColor ?? colorValue;
    final double spreadValue = spread == null ? 6 : spread!;
    final bool embossValue = emboss == null ? false : emboss!;
    BorderRadius? borderRadiusValue = borderRadius == null ? BorderRadius.zero : BorderRadius.circular(borderRadius!);

    if (customBorderRadius != null) {
      borderRadiusValue = customBorderRadius;
    }
    final CurveType curveTypeValue = curveType == null ? CurveType.none : curveType!;

    List<BoxShadow> shadowList = [BoxShadow(color: _getAdjustColor(parentColorValue, embossValue ? 0 - depthValue! : depthValue), offset: Offset(0 - spreadValue, 0 - spreadValue), blurRadius: spreadValue), BoxShadow(color: _getAdjustColor(parentColorValue, embossValue ? depthValue : 0 - depthValue!), offset: Offset(spreadValue, spreadValue), blurRadius: spreadValue)];

    if (embossValue) shadowList = shadowList.reversed.toList();
    if (embossValue) colorValue = _getAdjustColor(colorValue, 0 - depthValue! ~/ 2);
    if (surfaceColor != null) colorValue = surfaceColorValue;

    late List<Color?> gradientColors;
    switch (curveTypeValue) {
      case CurveType.concave:
        gradientColors = _getConcaveGradients(colorValue, depthValue);
        break;
      case CurveType.convex:
        gradientColors = _getConvexGradients(colorValue, depthValue);
        break;
      case CurveType.none:
        gradientColors = _getFlatGradients(colorValue, depthValue);
        break;
    }

    return AnimatedContainer(
      duration: duration ?? const Duration(seconds: 1),
      curve: curve ?? Curves.linear,
      height: heightValue,
      width: widthValue,
      child: child,
      onEnd: onEnd,
      decoration: BoxDecoration(borderRadius: borderRadiusValue, color: colorValue, gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: gradientColors as List<Color>), boxShadow: shadowList),
    );
  }
}
