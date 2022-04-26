import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/ui/componets/clay_animaated_container.dart';

class ClayButton extends StatefulWidget {
  const ClayButton({
    Key? key,
    this.width,
    this.height,
    this.child,
    this.onTap,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Widget? child;
  final Function()? onTap;

  @override
  State<ClayButton> createState() => _ClayButtonState();
}

class _ClayButtonState extends State<ClayButton> {
  int delay = 200; // 왕복시간

  bool _emboss = false;
  set emboss(bool v) {
    _emboss = v;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (e) {
        emboss = true;
      },
      onPointerUp: (e) {
        emboss = false;
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: ClayAnimatedContainer(
          color: ColorPalette.bgColor,
          surfaceColor: ColorPalette.bgColor,
          depth: 50,
          borderRadius: 8,
          spread: 5,
          emboss: _emboss,
          // 왕복
          duration: Duration(milliseconds: delay ~/ 2),
          height: widget.height,
          width: widget.width,
          child: widget.child,
        ),
      ),
    );
  }
}
