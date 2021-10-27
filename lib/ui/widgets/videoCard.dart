import 'package:elearning/theme/box_icons_icons.dart';
import 'package:elearning/theme/config.dart';
import 'package:elearning/ui/pages/video.dart';
import 'package:elearning/ui/widgets/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;

class VideoCard extends material.StatelessWidget {
  final bool long;
  const VideoCard({
    required this.long,
    material.Key? key,
  }) : super(key: key);

  @override
  material.Widget build(material.BuildContext context) {
    return material.Padding(
      padding: const material.EdgeInsets.all(10.0),
      child: CardWidget(
        gradient: false,
        button: true,
        width: long ? 360 : 180,
        child: material.Column(
          mainAxisAlignment: material.MainAxisAlignment.start,
          children: <material.Widget>[
            material.Container(
              width: long ? 360 : 180,
              height: 87,
              decoration: material.BoxDecoration(
                image: material.DecorationImage(
                    image: material.AssetImage('assets/images/video.jpg'),
                    fit: material.BoxFit.cover),
                borderRadius: material.BorderRadius.only(
                  topLeft: material.Radius.circular(10),
                  topRight: material.Radius.circular(10),
                ),
              ),
              child: material.Text(""),
            ),
            material.Padding(
              padding: const material.EdgeInsets.all(8.0),
              child: material.Text(
                "Stars - What are they made up of ?",
                overflow: material.TextOverflow.ellipsis,
                maxLines: 2,
                style: material.TextStyle(
                    color: material.Color(0xFF535353),
                    fontFamily: 'Red Hat Display',
                    fontSize: 16),
              ),
            ),
            material.Padding(
              padding: const material.EdgeInsets.symmetric(horizontal: 8.0),
              child: material.Row(
                children: <material.Widget>[
                  material.Icon(BoxIcons.bx_bar_chart_alt_2, size: 16),
                  material.Text(
                    "Beginner",
                    style: material.TextStyle(
                        color: material.Color(0xFFADADAD),
                        fontFamily: 'Red Hat Display',
                        fontSize: 10),
                  ),
                  material.Spacer(),
                  material.Text(
                    "12 mins",
                    style: material.TextStyle(
                        color: material.Color(0xFFADADAD),
                        fontFamily: 'Red Hat Display',
                        fontSize: 10),
                  ),
                  material.Icon(BoxIcons.bx_timer, size: 16),
                ],
              ),
            ),
            material.Spacer(),
            material.Padding(
              padding: const material.EdgeInsets.only(top: 6.0),
              child: material.GestureDetector(
                child: material.Container(
                  padding: material.EdgeInsets.fromLTRB(0, 14, 0, 14),
                  decoration: material.BoxDecoration(gradient: Colors().waves),
                  child: material.Row(
                    mainAxisAlignment: material.MainAxisAlignment.spaceEvenly,
                    children: <material.Widget>[
                      material.Icon(BoxIcons.bx_play_circle,
                          color: material.Colors.white),
                      material.Text(
                        "Watch Lecture",
                        style: material.TextStyle(
                            color: material.Colors.white,
                            fontFamily: 'Red Hat Display',
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
