import 'dart:developer';

import 'package:elearning/routes/routing_constants.dart';
import 'package:elearning/ui/pages/home.dart';
import 'package:elearning/ui/pages/undefinedScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:elearning/analytics/analytics_service.dart';

List<String> navStack = ["Home"];
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      navStack.add("Splash");
      log(navStack.toString());
      analytics.setCurrentScreen(screenName: HomeRoute);
      return CupertinoPageRoute(builder: (context) => const Home());
    // case SearchRoute:
    //   navStack.add("Search");
    //   print(navStack);
    //   analytics.setCurrentScreen(screenName: SearchRoute);
    //   return PageRouteBuilder(
    //       pageBuilder: (context, animation1, animation2) => SearchScreen());
    default:
      navStack.add("undefined");
      log(navStack.toString());
      analytics.setCurrentScreen(screenName: "/undefined");
      return CupertinoPageRoute(
        builder: (context) => UndefinedScreen(
          name: settings.name,
        ),
      );
  }
}
