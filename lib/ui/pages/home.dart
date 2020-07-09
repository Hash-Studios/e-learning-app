import 'package:elearning/theme/box_icons_icons.dart';
import 'package:elearning/theme/config.dart';
import 'package:elearning/ui/widgets/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/services.dart';

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
          backgroundColor: Colors().secondColor(1),
          controller: controller,
          tabBar: CupertinoTabBar(
            activeColor: material.Colors.lightBlue,
            inactiveColor: Color(0xFFADADAD),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_home_circle), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_calendar), title: Text("Planner")),
              BottomNavigationBarItem(icon: Container()),
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bxs_videos), title: Text("Videos")),
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_stats), title: Text("Leaderboard")),
            ],
          ),
          tabBuilder: (context, index) => (index == 0)
              ? HomePage()
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
              child: material.FloatingActionButton(
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: material.Colors.transparent,
                  child: Icon(BoxIcons.bx_pencil),
                  onPressed: () {}),
            )),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    Key key,
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
                    itemExtent: MediaQuery.of(context).size.height * 0.29),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Recommended Lectures',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return VideoCard();
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
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return VideoCard();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: TopBar(controller: controller),
          )
        ],
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CardWidget(
        gradient: false,
        button: true,
        width: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 180,
              height: 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/video.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Text(""),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Stars - What are they made up of ?",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    color: Color(0xFF535353),
                    fontFamily: 'Red Hat Display',
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: <Widget>[
                  Icon(BoxIcons.bx_bar_chart_alt_2, size: 16),
                  Text(
                    "Beginner",
                    style: TextStyle(
                        color: Color(0xFFADADAD),
                        fontFamily: 'Red Hat Display',
                        fontSize: 10),
                  ),
                  Spacer(),
                  Text(
                    "12 mins",
                    style: TextStyle(
                        color: Color(0xFFADADAD),
                        fontFamily: 'Red Hat Display',
                        fontSize: 10),
                  ),
                  Icon(BoxIcons.bx_timer, size: 16),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: CardWidget(
                  gradient: true,
                  button: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(BoxIcons.bx_play_circle,
                          color: material.Colors.white),
                      Text(
                        "Watch Lecture",
                        style: TextStyle(
                            color: material.Colors.white,
                            fontFamily: 'Red Hat Display',
                            fontSize: 18),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 20,
          width: 4,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: Color(0xFF343434)),
        ),
        Text(
          text,
          style: TextStyle().copyWith(
            fontSize: 17.0,
          ),
        ),
        Spacer(),
        CupertinoButton(
          child:
              Icon(BoxIcons.bx_chevron_right, color: material.Colors.lightBlue),
          onPressed: onPressed,
        )
      ],
    );
  }
}

class TopBar extends StatefulWidget {
  const TopBar({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  int tab = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.33,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Hi, Akshay.",
                    style: TextStyle(
                        color: Color(0xFF343434),
                        fontSize: 24,
                        fontFamily: 'Red Hat Display',
                        fontWeight: material.FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: material.CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CupertinoTextField(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: material.Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 25,
                      offset: Offset(0, 10),
                      color: Color(0x1A636363),
                    ),
                  ]),
              padding: EdgeInsets.all(10),
              style: TextStyle(
                  color: Color(0xFF343434),
                  fontSize: 18,
                  fontFamily: 'Red Hat Display'),
              enableInteractiveSelection: true,
              controller: widget.controller,
              expands: false,
              inputFormatters: [
                BlacklistingTextInputFormatter.singleLineFormatter
              ],
              keyboardType: TextInputType.text,
              suffix: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  BoxIcons.bx_search,
                  color: Color(0xFFADADAD),
                ),
              ),
              textInputAction: TextInputAction.search,
              textCapitalization: TextCapitalization.words,
              placeholder: "Search",
              placeholderStyle: TextStyle(
                  color: Color(0xFFADADAD),
                  fontSize: 18,
                  fontFamily: 'Red Hat Display'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.161,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 10, 25),
                  child: CardWidget(
                    child: Center(
                      child: Text(index.toString()),
                    ),
                    func: () {
                      setState(() {
                        tab = index;
                      });
                    },
                    button: true,
                    gradient: false,
                    width: 90,
                    height: 90,
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: AnimatedContainer(
              curve: Curves.bounceOut,
              margin: EdgeInsets.fromLTRB(
                  tab == 0 ? 35 : tab == 1 ? 150 : tab == 2 ? 265 : 385,
                  0,
                  0,
                  0),
              duration: Duration(milliseconds: 200),
              height: 3,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: material.BorderRadius.circular(500),
                color: Color(0xFFC6EDFF),
              ),
            ),
          )
        ],
      ),
    );
  }
}
