import 'dart:ui';

import 'package:elearning/theme/box_icons_icons.dart';
import 'package:elearning/ui/widgets/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class OverlayWidget extends StatelessWidget {
  OverlayWidget({
    Key? key,
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

  final List names = [
    'Revision - Kinematics',
    '3D Geometry',
    'Revision - Organic Bonds',
    'Plants and Life'
  ];
  final List times = ['5pm-6pm', '6pm-7pm', '7pm-8pm', '8pm-9pm'];
  final List colors = [
    Color(0xFFFF0000),
    Color(0xFF0000FF),
    Color(0xFFFFFF00),
    Color(0xFF00FF00)
  ];

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
                  const EdgeInsets.symmetric(vertical: 48.0, horizontal: 10),
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
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                physics: ScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return index == 4
                      ? Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 14),
                          child: CardWidget(
                            gradient: true,
                            button: true,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Icon(
                                      BoxIcons.bx_plus,
                                      color: Color(0xFFFFFFFF),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    "Add reminder",
                                    style: TextStyle(
                                        fontFamily: 'Red Hat Display',
                                        fontSize: 18,
                                        color: Color(0xFFFFFFFF)),
                                  ),
                                ),
                              ],
                            ),
                            height: 80,
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 14),
                          child: CardWidget(
                            gradient: false,
                            button: false,
                            child: Row(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 2),
                                      child: Text(
                                        "${names[index]}.",
                                        style: TextStyle(
                                            fontFamily: 'Red Hat Display',
                                            fontSize: 18,
                                            color: Color(0xFF585858)),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 2, 8, 8),
                                      child: Text(
                                        "${times[index]}",
                                        style: TextStyle(
                                            fontFamily: 'Red Hat Display',
                                            fontSize: 14,
                                            color: Color(0xFF585858)),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.elliptical(10, 50),
                                            bottomLeft:
                                                Radius.elliptical(10, 50)),
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xFFFFFFFF),
                                              colors[index]
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight)),
                                    child: SizedBox(
                                      height: 80,
                                    ))
                              ],
                            ),
                            height: 80,
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
