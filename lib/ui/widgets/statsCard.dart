import 'package:elearning/theme/box_icons_icons.dart';
import 'package:elearning/theme/config.dart';
import 'package:elearning/ui/pages/video.dart';
import 'package:elearning/ui/widgets/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;

class StatsCard extends material.StatelessWidget {
  const StatsCard({
    material.Key? key,
  }) : super(key: key);

  @override
  material.Widget build(material.BuildContext context) {
    return material.Padding(
      padding: const material.EdgeInsets.all(10.0),
      child: CardWidget(
        gradient: false,
        button: true,
        width: 360,
        child: material.Column(
          mainAxisAlignment: material.MainAxisAlignment.start,
          children: <material.Widget>[
            material.Padding(
              padding: const material.EdgeInsets.only(bottom: 6.0),
              child: material.GestureDetector(
                child: material.Container(
                  padding: material.EdgeInsets.fromLTRB(0, 14, 0, 14),
                  decoration: material.BoxDecoration(gradient: Colors().waves),
                  child: material.Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: material.Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "3489",
                            style: TextStyle(
                                fontFamily: 'Red Hat Display',
                                fontSize: 18,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ),
                        Image.asset(
                          'assets/images/CoinSmall.png',
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  material.Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
            ),
            material.Padding(
              padding: const material.EdgeInsets.all(8.0),
              child: material.Text(
                "Statistics",
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
                  material.Icon(BoxIcons.bx_question_mark, size: 16),
                  material.Text(
                    "23 Questions asked",
                    style: material.TextStyle(
                        color: material.Color(0xFFADADAD),
                        fontFamily: 'Red Hat Display',
                        fontSize: 10),
                  ),
                  material.Spacer(),
                  material.Text(
                    "12 days Streak",
                    style: material.TextStyle(
                        color: material.Color(0xFFADADAD),
                        fontFamily: 'Red Hat Display',
                        fontSize: 10),
                  ),
                  material.Icon(BoxIcons.bxs_flame, size: 16),
                ],
              ),
            ),
            material.Padding(
              padding: const material.EdgeInsets.symmetric(horizontal: 8.0),
              child: material.Row(
                children: <material.Widget>[
                  material.Icon(BoxIcons.bx_pen, size: 16),
                  material.Text(
                    "89 Questions answered",
                    style: material.TextStyle(
                        color: material.Color(0xFFADADAD),
                        fontFamily: 'Red Hat Display',
                        fontSize: 10),
                  ),
                  material.Spacer(),
                  material.Text(
                    "25 topics revised",
                    style: material.TextStyle(
                        color: material.Color(0xFFADADAD),
                        fontFamily: 'Red Hat Display',
                        fontSize: 10),
                  ),
                  material.Icon(BoxIcons.bx_book_open, size: 16),
                ],
              ),
            ),
            material.Spacer(),
          ],
        ),
      ),
    );
  }
}
