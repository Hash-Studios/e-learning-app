import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final bool? isCollapsed;
  final double? screenWidth;
  final Duration? duration;
  final Animation<double>? scaleAnimation;
  final Function? onMenuTap;
  final Widget? child;

  const Dashboard(
      {Key? key,
      this.isCollapsed,
      this.screenWidth,
      this.duration,
      this.scaleAnimation,
      this.onMenuTap,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: duration!,
      top: 0,
      bottom: 0,
      left: isCollapsed! ? 0 : 0.6 * screenWidth!,
      right: isCollapsed! ? 0 : -0.6 * screenWidth!,
      child: ScaleTransition(
        scale: scaleAnimation!,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                offset: Offset(0, 10),
                color: Color(0x2A636363),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: isCollapsed!
                ? BorderRadius.zero
                : BorderRadius.all(Radius.circular(20)),
            child: Material(
              animationDuration: duration!,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
