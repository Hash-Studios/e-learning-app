import 'package:flutter/cupertino.dart';

import 'package:elearning/theme/config.dart';

class CardWidget extends StatelessWidget {
  final bool gradient;
  final Color color;
  final double width;
  final double height;
  final Widget child;
  CardWidget({
    @required this.gradient,
    this.color,
    this.width,
    this.height,
    @required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: child,
    );
  }
}
