import 'package:elearning/theme/box_icons_icons.dart';
import 'package:elearning/ui/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;

class VideoCard extends StatelessWidget {
  final bool long;
  const VideoCard({
    @required this.long,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CardWidget(
        gradient: false,
        button: true,
        width: long ? 360 : 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: long ? 360 : 180,
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
