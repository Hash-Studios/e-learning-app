import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: [BottomNavigationBarItem(icon: Icon(CupertinoIcons.home))]),
        tabBuilder: (context, index) => Container());
  }
}
