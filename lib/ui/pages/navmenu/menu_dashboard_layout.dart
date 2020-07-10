// import 'package:elearning/theme/config.dart';
import 'package:elearning/ui/pages/home.dart';
import 'package:elearning/ui/pages/undefinedScreen.dart';
import 'package:elearning/ui/pages/video.dart';
import 'package:flutter/material.dart';
// import 'package:menu_and_dashboard/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:elearning/ui/pages/navmenu/dashboard.dart';
// import 'package:menu_and_dashboard/ui/pages/messages_page.dart';
// import 'package:menu_and_dashboard/ui/pages/my_cards_page.dart';
// import 'package:menu_and_dashboard/ui/pages/utility_bills_page.dart';

import 'menu.dart';

final Color backgroundColor = Colors.lightBlue;

class MenuDashboardLayout extends StatefulWidget {
  @override
  _MenuDashboardLayoutState createState() => _MenuDashboardLayoutState();
}

class _MenuDashboardLayoutState extends State<MenuDashboardLayout>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 200);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.75).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onMenuTap() {
    setState(() {
      if (isCollapsed)
        _controller.forward();
      else
        _controller.reverse();

      isCollapsed = !isCollapsed;
    });
  }

  void onMenuItemClicked() {
    setState(() {
      _controller.reverse();
    });

    isCollapsed = !isCollapsed;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          Menu(
              onMenuTap: onMenuTap,
              slideAnimation: _slideAnimation,
              menuAnimation: _menuScaleAnimation,
              onMenuItemClicked: onMenuItemClicked),
          Dashboard(
            duration: duration,
            onMenuTap: onMenuTap,
            scaleAnimation: _scaleAnimation,
            isCollapsed: isCollapsed,
            screenWidth: screenWidth,
            child: Home(onMenuTap: onMenuTap),
          ),
        ],
      ),
    );
  }
}
