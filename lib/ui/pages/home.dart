import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CupertinoTabController controller;
  @override
  void initState() {
    controller = CupertinoTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        CupertinoTabScaffold(
          controller: controller,
          tabBar: CupertinoTabBar(
            activeColor: Colors.lightBlue,
            inactiveColor: Color(0xFFADADAD),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today), title: Text("Planner")),
              BottomNavigationBarItem(icon: Container()),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_library), title: Text("Videos")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.show_chart), title: Text("Leaderboard")),
            ],
          ),
          tabBuilder: (context, index) => (index == 0)
              ? CupertinoPageScaffold(
                  child: CustomScrollView(
                  slivers: <Widget>[
                    CupertinoSliverNavigationBar(
                      largeTitle: Text("Home"),
                      backgroundColor: Colors.white,
                    ),
                    SliverToBoxAdapter(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Show Favorites Only',
                            style: TextStyle().copyWith(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
              : (index == 1)
                  ? Container(
                      color: CupertinoColors.activeGreen,
                    )
                  : (index == 2)
                      ? Container(
                          color: CupertinoColors.activeOrange,
                        )
                      : (index == 3)
                          ? Container(
                              color: CupertinoColors.destructiveRed,
                            )
                          : Container(
                              color: CupertinoColors.extraLightBackgroundGray,
                            ),
        ),
        Positioned(
            bottom: 0,
            child: GestureDetector(
              child: SizedBox(
                height: 60,
                width: 80,
                child: Text(""),
              ),
              onTap: () {},
            )),
        Positioned(
            bottom: 20,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFABDCFF),
                      Color(0xFF0396FF),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 25,
                        color: Color(0xFF03A9F4).withOpacity(0.4),
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(500)),
              child: FloatingActionButton(
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.edit),
                  onPressed: () {}),
            )),
      ],
    );
  }
}
