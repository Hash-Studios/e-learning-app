import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:elearning/theme/box_icons_icons.dart';
import 'package:elearning/theme/config.dart';
import 'package:elearning/ui/pages/leaderboard.dart';
import 'package:elearning/ui/pages/planner.dart';
import 'package:elearning/ui/pages/videos.dart';
import 'package:elearning/ui/widgets/sectionHeader.dart';
import 'package:elearning/ui/widgets/topBar.dart';
import 'package:elearning/ui/widgets/videoCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;

class Home extends StatefulWidget {
  final onMenuTap;
  Home({this.onMenuTap});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabNo = 0;
  bool overlayVisible;
  CupertinoTabController controller;
  @override
  void initState() {
    overlayVisible = false;
    controller = CupertinoTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        CupertinoTabScaffold(
          backgroundColor: Colors().secondColor(1),
          controller: controller,
          tabBar: CupertinoTabBar(
            onTap: (value) {
              setState(() {
                tabNo = value;
              });
            },
            activeColor: material.Colors.lightBlue,
            inactiveColor: Color(0xFFADADAD),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_home_circle),
                  title: tabNo == 0 ? Text("Home") : Container()),
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_calendar),
                  title: tabNo == 1 ? Text("Planner") : Container()),
              BottomNavigationBarItem(icon: Container()),
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bxs_videos),
                  title: tabNo == 3 ? Text("Videos") : Container()),
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_stats),
                  title: tabNo == 4 ? Text("Leaderboard") : Container()),
            ],
          ),
          tabBuilder: (context, index) => (index == 0)
              ? HomePage(
                  onMenuTap: widget.onMenuTap,
                )
              : (index == 1)
                  ? PlannerPage(
                      onMenuTap: widget.onMenuTap,
                    )
                  : (index == 2)
                      ? Container(
                          color: CupertinoColors.activeOrange,
                        )
                      : (index == 3)
                          ? VideosPage(
                              onMenuTap: widget.onMenuTap,
                            )
                          : LeaderboardPage(
                              onMenuTap: widget.onMenuTap,
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
        overlayVisible ? OverlayWidget() : Container(),
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
              child: material.FloatingActionButton(
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: material.Colors.transparent,
                  child: overlayVisible
                      ? Icon(material.Icons.close)
                      : Icon(BoxIcons.bx_pencil),
                  onPressed: () {
                    setState(() {
                      overlayVisible = !overlayVisible;
                    });
                  }),
            )),
      ],
    );
  }
}

class OverlayWidget extends StatelessWidget {
  const OverlayWidget({
    Key key,
  }) : super(key: key);
  String getStrToday() {
    var today = DateFormat().add_yMMMMd().format(DateTime.now());
    var strDay = today.split(" ")[1].replaceFirst(',', '');
    if (strDay == '1') {
      strDay = strDay + "st";
    } else if (strDay == '2') {
      strDay = strDay + "nd";
    } else if (strDay == '3') {
      strDay = strDay + "rd";
    } else {
      strDay = strDay + "th";
    }
    var strMonth = today.split(" ")[0];
    var strYear = today.split(" ")[2];
    return "$strDay $strMonth $strYear";
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFFEDEDED).withOpacity(0.65),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Today",
                      style: TextStyle(
                          fontFamily: 'Red Hat Display',
                          fontSize: 24,
                          color: Color(0xFF343434),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      getStrToday(),
                      style: TextStyle(
                          fontFamily: 'Red Hat Display',
                          fontSize: 24,
                          color: Color(0xFF343434),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final onMenuTap;
  HomePage({
    Key key,
    @required this.onMenuTap,
  }) : super(key: key);

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors().secondColor(1),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverFixedExtentList(
                    delegate: SliverChildListDelegate.fixed([Container()]),
                    itemExtent: MediaQuery.of(context).size.height * 0.32),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Recommended Lectures',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return VideoCard(long: false);
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Revision Lectures',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return VideoCard(long: false);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: TopBar(
              controller: controller,
              expanded: true,
              onMenuTap: onMenuTap,
            ),
          )
        ],
      ),
    );
  }
}
