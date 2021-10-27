import 'package:elearning/theme/box_icons_icons.dart';
import 'package:elearning/theme/config.dart';
import 'package:elearning/ui/widgets/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors().secondColor(1),
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: true,
        previousPageTitle: "Back",
        trailing: CupertinoButton(
          padding: EdgeInsets.all(0),
          child: Icon(BoxIcons.bx_share_alt),
          onPressed: () {},
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                    child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Image(
                        image: ResizeImage(
                          AssetImage('assets/images/video.jpg'),
                          height: MediaQuery.of(context).size.width ~/ 2,
                          width:
                              (MediaQuery.of(context).size.height * 0.5) ~/ 2,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 10, 8, 8.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 4,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(500),
                                      color: Color(0xFF343434)),
                                  child: Text(""),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Revision - Kinematics",
                                    style: TextStyle(
                                        color: Color(0xFF343434),
                                        fontFamily: 'Red Hat Display',
                                        fontSize: 24),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Icon(BoxIcons.bx_bar_chart_alt_2,
                                      size: 20, color: Color(0xFFADADAD)),
                                ),
                                Text(
                                  "Beginner",
                                  style: TextStyle(
                                      color: Color(0xFFADADAD),
                                      fontFamily: 'Red Hat Display',
                                      fontSize: 14),
                                ),
                                Spacer(),
                                Text(
                                  "12 mins",
                                  style: TextStyle(
                                      color: Color(0xFFADADAD),
                                      fontFamily: 'Red Hat Display',
                                      fontSize: 14),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Icon(BoxIcons.bx_timer,
                                      size: 20, color: Color(0xFFADADAD)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut odio id urna ornare rhoncus. Fusce egestas tellus vitae elit pellentesque, sit amet gravida metus consectetur. Sed in hendrerit elit. Phasellus ullamcorper vulputate ex quis consequat. Aenean fringilla vulputate egestas. Aenean nec mattis turpis. Aenean a faucibus purus, in pulvinar velit. Nulla efficitur erat commodo.",
                                style: TextStyle(
                                    color: Color(0xFF343434),
                                    fontFamily: 'Red Hat Display',
                                    fontSize: 16),
                              ))
                        ],
                      ),
                    ),
                  ],
                )),
                Positioned(
                    right: 30,
                    top: MediaQuery.of(context).size.height * 0.465,
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
                          heroTag: "video",
                          elevation: 0,
                          highlightElevation: 0,
                          backgroundColor: material.Colors.transparent,
                          child: Icon(BoxIcons.bx_play, size: 40),
                          onPressed: () {}),
                    )),
              ],
            )),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CardWidget(
              button: true,
              gradient: true,
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Attempt Test",
                    style: TextStyle(
                        color: material.Colors.white,
                        fontFamily: 'Red Hat Display',
                        fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Icon(BoxIcons.bx_pencil, color: material.Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
