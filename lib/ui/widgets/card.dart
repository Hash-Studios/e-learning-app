import 'package:flutter/cupertino.dart';

import 'package:elearning/theme/config.dart';
import 'package:flutter/material.dart' as material;

class CardWidget extends StatelessWidget {
  final bool gradient;
  final bool button;
  final Color color;
  final double width;
  final double height;
  final Widget child;
  final int duration;
  final func;
  CardWidget({
    @required this.gradient,
    @required this.button,
    this.color,
    this.width,
    this.height,
    @required this.child,
    this.duration,
    this.func,
  });
  @override
  Widget build(BuildContext context) {
    return material.AnimatedContainer(
      duration: Duration(milliseconds: duration ?? 500),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color ?? Colors().mainColor(1),
        gradient: gradient
            ? Colors().waves
            : LinearGradient(colors: [
                color ?? Colors().mainColor(1),
                color ?? Colors().mainColor(1)
              ]),
        boxShadow: [
          BoxShadow(
            blurRadius: 25,
            offset: Offset(0, 10),
            color: Color(0x1A636363),
          ),
        ],
      ),
      child: button
          ? ClipRRect(
              borderRadius: material.BorderRadius.circular(10),
              child: material.MaterialButton(
                padding: material.EdgeInsets.zero,
                elevation: 0,
                child: child,
                onPressed: func,
              ),
            )
          : child,
    );
  }
}
